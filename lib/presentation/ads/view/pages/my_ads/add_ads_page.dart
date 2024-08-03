import 'package:assorted_layout_widgets/assorted_layout_widgets.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:dio/dio.dart';
import 'package:image_picker/image_picker.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:optlove/app/theme/bloc/app_theme.dart';
import 'package:optlove/generated/assets.gen.dart';
import 'package:optlove/presentation/ads/data/models/ads_category_model.dart';
import 'package:optlove/presentation/ads/domain/entities/ads_function_response.dart';
import 'package:optlove/presentation/ads/view/bloc/add_ad_bloc.dart';
import 'package:optlove/presentation/ads/view/widgets/select_ads_type_sheet.dart';
import 'package:optlove/presentation/ads/view/widgets/show_select_ads_category.dart';
import 'package:optlove/presentation/ads/view/widgets/show_select_ads_subcategory.dart';
import 'package:optlove/presentation/registration/domain/entities/cities.dart';
import 'package:optlove/presentation/registration/view/bloc/search_city_bloc.dart';
import 'package:optlove/presentation/registration/view/widgets/reg_text_fields.dart';
import 'package:searchfield/searchfield.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../../../app/utils/functionNetwork.dart';

class AddNewAdsPage extends StatefulWidget {
  const AddNewAdsPage({super.key});

  @override
  State<AddNewAdsPage> createState() => _AddNewAdsPageState();
}

class _AddNewAdsPageState extends State<AddNewAdsPage> {
  late ScrollController _controller;
  String _selectedOption = "Спрос";
  AdsCategory? _selectedCategory;
  AdsCategory? _selectedSubCategory;

  final TextEditingController nameTextController = TextEditingController();
  final TextEditingController descriptionTextController =
      TextEditingController();
  final TextEditingController sellerOrOrganizationNameTextController =
      TextEditingController();
  final TextEditingController priceTextController = TextEditingController();
  final TextEditingController phoneTextController = TextEditingController();
  final TextEditingController emailTextController = TextEditingController();

  var phoneMask = MaskTextInputFormatter(
      mask: '+7 (###) ###-##-##',
      filter: {"#": RegExp(r'[0-9]')},
      type: MaskAutoCompletionType.lazy);

  var emailMask = MaskTextInputFormatter(filter: {
    "#": RegExp(r'^[\+]?[(]?[0-9]{3}[)]?[-\s\.]?[0-9]{3}[-\s\.]?[0-9]{4,6}$')
  }, type: MaskAutoCompletionType.lazy);

  String userId = "";
  List<XFile> images = [];

  final TextEditingController cityController = TextEditingController();
  var focus = false;

  static final List<Cities> _cities = <Cities>[];
  Cities? _selectedCity;
  var isCorrectFields = false;
  var citySelected = false;
  var os = 0;
  var showSuggestion = false;

  void checkFields() {
    final isValidAdsName = nameTextController.text.isNotEmpty;
    final isSelectedCategory = _selectedCategory != null
        ? _selectedCategory!.id == 1
            ? _selectedSubCategory != null
            : _selectedCategory != null
        : false;
    final isValidAdsDescription = descriptionTextController.text.isNotEmpty;
    final isValidOrganizationName =
        sellerOrOrganizationNameTextController.text.isNotEmpty;
    final isValidPhone = phoneTextController.text.length == 18;
    final isValidEmail = EmailValidator.validate(emailTextController.text);
    final isValidImages = images.isNotEmpty;
    final isValidPrice = priceTextController.text.isNotEmpty &&
        isNumeric(priceTextController.text);

    print("Phone valid: $isValidPhone");
    print("Email valid: $isValidEmail");
    print("City selected: $citySelected");

    if (isValidPhone &&
        isValidEmail &&
        citySelected &&
        isValidAdsName &&
        isSelectedCategory &&
        isValidAdsDescription &&
        isValidOrganizationName &&
        isValidImages &&
        isValidPrice) {
      setState(() {
        isCorrectFields = true;
      });
    } else {
      setState(() {
        isCorrectFields = false;
      });
    }

    print("isCorrectFields: $isCorrectFields");
  }

  bool isValidPhoneNumber(String value) =>
      RegExp(r'(^(?:[+0]9)?[0-9]{10,12}$)').hasMatch(value);

  bool isNumeric(String value) {
    return RegExp(r'^-?[0-9]+$').hasMatch(value);
  }

  @override
  void initState() {
    super.initState();
    _controller = ScrollController();
    cityController.addListener(cityListener);
    phoneTextController.addListener(phoneListener);
    emailTextController.addListener(emailListener);
    priceTextController.addListener(priceListener);
    nameTextController.addListener(nameListener);
    descriptionTextController.addListener(descriptionListener);
    sellerOrOrganizationNameTextController
        .addListener(sellerOrOrganizationListener);
  }

  void cityListener() {
    if (cityController.text.length > 2) {
      setState(() {
        showSuggestion = true;
        BlocProvider.of<SearchCityBloc>(context).add(
          SearchCityEvent.searchCity(city: cityController.text),
        );
      });
    } else {
      setState(() {
        _cities.clear();
        showSuggestion = false;
      });
    }
    if (cityController.text.length != _selectedCity?.name?.length) {
      setState(() {
        citySelected = false;
      });
    }
    print("City controller text: ${cityController.text}");
  }

  void phoneListener() {
    print("Phone controller text: ${phoneTextController.text}");
    checkFields();
  }

  void emailListener() {
    print("Email controller text: ${emailTextController.text}");
    checkFields();
  }

  void priceListener() {
    print("Price controller text: ${priceTextController.text}");
    checkFields();
  }

  void nameListener() {
    print("Name controller text: ${nameTextController.text}");
    checkFields();
  }

  void descriptionListener() {
    print("Description controller text: ${descriptionTextController.text}");
    checkFields();
  }

  void sellerOrOrganizationListener() {
    print(
        "SellerOrOrganization controller text: ${sellerOrOrganizationNameTextController.text}");
    checkFields();
  }

  Future<void> initUserId() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    final String? userIdPrefs = prefs.getString('userId');
    if (userIdPrefs != null) {
      setState(() {
        userId = userIdPrefs;
      });
    }
  }

  @override
  void dispose() {
    nameTextController.removeListener(nameListener);
    descriptionTextController.removeListener(descriptionListener);
    sellerOrOrganizationNameTextController
        .removeListener(sellerOrOrganizationListener);
    cityController.removeListener(cityListener);
    phoneTextController.removeListener(phoneListener);
    emailTextController.removeListener(emailListener);
    priceTextController.removeListener(priceListener);

    _controller.dispose();
    nameTextController.dispose();
    descriptionTextController.dispose();
    sellerOrOrganizationNameTextController.dispose();
    priceTextController.dispose();
    phoneTextController.dispose();
    emailTextController.dispose();
    cityController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final colorTheme = AppTheme.of(context).colorTheme;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: BlocListener<AddAdBloc, AddAdState>(
        listener: (context, state) {
          state.when(
            initial: () {},
            loading: () {},
            success: (AdsFunctionResponse response) {
              print(response.toString());
              Fluttertoast.showToast(
                  msg: "Объявление успешно сохранено",
                  toastLength: Toast.LENGTH_LONG,
                  gravity: ToastGravity.BOTTOM,
                  timeInSecForIosWeb: 1,
                  backgroundColor: Colors.grey,
                  textColor: Colors.white,
                  fontSize: 16.0);
              Navigator.pop(context);
            },
            failure: (DioException error) {
              Fluttertoast.showToast(
                  msg: "Ошибка: ${error.message}",
                  toastLength: Toast.LENGTH_LONG,
                  gravity: ToastGravity.BOTTOM,
                  timeInSecForIosWeb: 1,
                  backgroundColor: Colors.grey,
                  textColor: Colors.white,
                  fontSize: 16.0);
            },
          );
        },
        child: SingleChildScrollView(
          controller: _controller,
          child: Padding(
            padding: EdgeInsets.only(
                bottom: MediaQuery.of(context).viewInsets.bottom),
            child: Container(
              padding: const EdgeInsets.only(left: 16, right: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 16),
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Box(
                      color: Colors.white,
                      child: Assets.images.back.svg(
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    "Создать объявление",
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.w700,
                      color: colorTheme.blackText,
                    ),
                  ),
                  const SizedBox(height: 12),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "Выберите тип объявления",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          color: colorTheme.blackText,
                        ),
                      ),
                      const SizedBox(width: 5),
                      const Text(
                        '*',
                        style: TextStyle(color: Colors.red, fontSize: 18),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  GestureDetector(
                    onTap: () async {
                      final value = await showSelectAdsTypeBottomSheet(
                          context, _selectedOption);
                      if (value != null) {
                        setState(() {
                          _selectedOption = value;
                        });
                        print(_selectedOption);
                      }
                    },
                    child: Container(
                      height: 50,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: Colors.grey.shade100,
                      ),
                      padding: const EdgeInsets.only(left: 14, right: 14),
                      alignment: Alignment.centerLeft,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            _selectedOption,
                            style: const TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Assets.images.arrowBottom.svg(
                            width: 22,
                            fit: BoxFit.cover,
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 24),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "Выберите категорию",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          color: colorTheme.blackText,
                        ),
                      ),
                      const SizedBox(width: 5),
                      const Text(
                        '*',
                        style: TextStyle(color: Colors.red, fontSize: 18),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  GestureDetector(
                    onTap: () async {
                      final value =
                          await showSelectAdsCategoryBottomSheet(context);
                      if (value != null) {
                        setState(() {
                          _selectedCategory = value;
                        });
                        checkFields();
                      }
                    },
                    child: Container(
                      height: 50,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: Colors.grey.shade100,
                      ),
                      padding: const EdgeInsets.only(left: 14, right: 14),
                      alignment: Alignment.centerLeft,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            _selectedCategory != null
                                ? _selectedCategory!.name
                                : "Выберите категорию",
                            style: const TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Assets.images.arrowBottom.svg(
                            width: 22,
                            fit: BoxFit.cover,
                          ),
                        ],
                      ),
                    ),
                  ),
                  _selectedCategory != null
                      ? _selectedCategory!.name == "Продажа товаров"
                          ? Column(
                              children: [
                                const SizedBox(height: 24),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      "Выберите подкатегорию",
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w700,
                                          color: colorTheme.blackText),
                                    ),
                                    const SizedBox(width: 5),
                                    const Text(
                                      '*',
                                      style: TextStyle(
                                          color: Colors.red, fontSize: 18),
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 20),
                                GestureDetector(
                                  onTap: () async {
                                    final value =
                                        await showSelectAdsSubCategoryBottomSheet(
                                            context,
                                            _selectedCategory!.id.toString());
                                    if (value != null) {
                                      setState(() {
                                        _selectedSubCategory = value;
                                      });
                                      checkFields();
                                    }
                                  },
                                  child: Container(
                                    height: 50,
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(16),
                                      color: Colors.grey.shade100,
                                    ),
                                    padding: const EdgeInsets.only(
                                        left: 14, right: 14),
                                    alignment: Alignment.centerLeft,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Text(
                                          _selectedSubCategory != null
                                              ? _selectedSubCategory!.name
                                              : "Выберите подкатегорию",
                                          style: const TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                        Assets.images.arrowBottom.svg(
                                          width: 22,
                                          fit: BoxFit.cover,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            )
                          : const SizedBox()
                      : const SizedBox(),
                  const SizedBox(height: 24),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "Введите название объявления",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                            color: colorTheme.blackText),
                      ),
                      const SizedBox(width: 5),
                      const Text(
                        '*',
                        style: TextStyle(color: Colors.red, fontSize: 18),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  TextField(
                    controller: nameTextController,
                    onChanged: (value) => checkFields(),
                    decoration: InputDecoration(
                      hintText: "Название объявления",
                      hintStyle: const TextStyle(
                        fontSize: 16,
                        color: Colors.grey,
                        fontWeight: FontWeight.normal,
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.grey.shade300,
                        ),
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.grey.shade200,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 24),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "Добавьте описание",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                            color: colorTheme.blackText),
                      ),
                      const SizedBox(width: 5),
                      const Text(
                        '*',
                        style: TextStyle(color: Colors.red, fontSize: 18),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  TextField(
                    controller: descriptionTextController,
                    onChanged: (value) => checkFields(),
                    decoration: InputDecoration(
                      hintText: "Описание",
                      hintStyle: const TextStyle(
                        fontSize: 16,
                        color: Colors.grey,
                        fontWeight: FontWeight.normal,
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.grey.shade300,
                        ),
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.grey.shade200,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 24),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 60,
                        width: MediaQuery.of(context).size.width - 50,
                        child: Text(
                          "Выберите название продавца или организации",
                          maxLines: 3,
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                              color: colorTheme.blackText),
                        ),
                      ),
                      const SizedBox(width: 5),
                      const Text(
                        '*',
                        style: TextStyle(color: Colors.red, fontSize: 18),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  TextField(
                    controller: sellerOrOrganizationNameTextController,
                    onChanged: (value) => checkFields,
                    decoration: InputDecoration(
                      hintText: "Название продавца или организации",
                      hintStyle: const TextStyle(
                        fontSize: 16,
                        color: Colors.grey,
                        fontWeight: FontWeight.normal,
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.grey.shade300,
                        ),
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.grey.shade200,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 24),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Добавьте изображение",
                        maxLines: 3,
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                            color: colorTheme.blackText),
                      ),
                      const SizedBox(width: 5),
                      const Text(
                        '*',
                        style: TextStyle(color: Colors.red, fontSize: 18),
                      ),
                    ],
                  ),
                  const SizedBox(height: 24),
                  Row(
                    children: [
                      GestureDetector(
                        onTap: () async {
                          final ImagePicker picker = ImagePicker();
                          final List<XFile> files =
                              await picker.pickMultiImage(limit: 10);
                          print(files);
                          setState(() {
                            images = files;
                          });
                          checkFields();
                        },
                        child: Container(
                          height: 56,
                          width: 200,
                          alignment: Alignment.center,
                          margin: const EdgeInsets.only(right: 16),
                          decoration: BoxDecoration(
                            color: const Color(0xFF5DB248),
                            borderRadius: BorderRadius.circular(16),
                          ),
                          child: const Text(
                            "Загрузить файл",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                      AutoSizeText(
                        images.isNotEmpty
                            ? "(выбрано ${images.length} файлов)"
                            : "(до 10 файлов)",
                        style: const TextStyle(fontSize: 14),
                        maxFontSize: 16,
                      ),
                    ],
                  ),
                  const SizedBox(height: 24),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "Добавьте город",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                            color: colorTheme.blackText),
                      ),
                      const SizedBox(width: 5),
                      const Text(
                        '*',
                        style: TextStyle(color: Colors.red, fontSize: 18),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  BlocConsumer<SearchCityBloc, SearchCityState>(
                    listener: (context, state) {
                      state.map(
                        failure: (loaded) {},
                        loading: (_) {},
                        loaded: (response) {
                          if (response.response.location.isNotEmpty) {
                            _cities.clear();
                            _cities.addAll(response.response.location);
                          }
                        },
                      );
                    },
                    builder: (context, state) {
                      return Form(
                          child: SearchField(
                        //offset: const Offset(0,-50),
                        controller: cityController,
                        suggestions: _cities
                            .map((city) =>
                                SearchFieldListItem(city.name!, item: city))
                            .toList(),
                        suggestionState: showSuggestion
                            ? Suggestion.hidden
                            : Suggestion.expand,
                        suggestionAction: SuggestionAction.unfocus,
                        textInputAction: TextInputAction.next,
                        searchStyle: TextStyle(
                          fontSize: 18,
                          color: Colors.black.withOpacity(0.8),
                        ),
                        validator: (x) {
                          if (!_cities.contains(x) || x!.isEmpty) {
                            return 'Please Enter a valid State';
                          }
                          return null;
                        },
                        searchInputDecoration: InputDecoration(
                            hintText: "Все города",
                            suffixIconConstraints: const BoxConstraints(
                                minHeight: 20, minWidth: 20),
                            suffixIcon: focus
                                ? Box(
                                    child:
                                        Assets.images.startReg.clearField.svg(),
                                  )
                                : null,
                            enabledBorder: UnderlineInputBorder(
                                borderSide:
                                    BorderSide(color: colorTheme.borderGray)),
                            focusedBorder: UnderlineInputBorder(
                                borderSide:
                                    BorderSide(color: colorTheme.borderGray)),
                            labelText: "Выберите город",
                            labelStyle: TextStyle(
                                color: colorTheme.greyText,
                                fontSize: 17,
                                fontWeight: FontWeight.normal)),
                        maxSuggestionsInViewPort: 5,
                        itemHeight: 40,
                        onSuggestionTap: (SearchFieldListItem<Cities> city) {
                          setState(() {
                            citySelected = true;
                            _selectedCity = city.item!;
                          });
                        },
                      ));
                    },
                  ),
                  const SizedBox(height: 24),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Добавьте цену",
                        maxLines: 3,
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                            color: colorTheme.blackText),
                      ),
                      const SizedBox(width: 5),
                      const Text(
                        '*',
                        style: TextStyle(color: Colors.red, fontSize: 18),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  TextField(
                    controller: priceTextController,
                    decoration: InputDecoration(
                      hintText: "Цена",
                      hintStyle: const TextStyle(
                        fontSize: 16,
                        color: Colors.grey,
                        fontWeight: FontWeight.normal,
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.grey.shade300,
                        ),
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.grey.shade200,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 24),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Укажите контактные данные",
                        maxLines: 3,
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                            color: colorTheme.blackText),
                      ),
                      const SizedBox(width: 5),
                      const Text(
                        '*',
                        style: TextStyle(color: Colors.red, fontSize: 18),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  RegTextField(
                    isPassword: false,
                    controller: phoneTextController,
                    labelText: "Номер телефона",
                    keyboardType: TextInputType.phone,
                    inputFormatters: phoneMask,
                    validator: (value) {
                      if (isValidPhoneNumber(value!)) {
                        return "Некорректный номер телефона";
                      }
                      if (phoneTextController.text.length < 18) {
                        return "Короткий номер телефона";
                      }
                      return null;
                    },
                    function: () => phoneTextController.clear(),
                  ),
                  const SizedBox(height: 34),
                  RegTextField(
                      isPassword: false,
                      controller: emailTextController,
                      labelText: "Email",
                      keyboardType: TextInputType.emailAddress,
                      inputFormatters: emailMask,
                      validator: (value) => EmailValidator.validate(value!)
                          ? null
                          : "Введите корректный email",
                      function: () => emailTextController.clear()),
                  const SizedBox(height: 28),
                  GestureDetector(
                    onTap: isCorrectFields
                        ? () async {
                            final phone = phoneTextController.text
                                .replaceAll(RegExp('[^0-9]'), '');

                            List<MultipartFile> multipartFiles =
                                await convertToMultipartFiles(images);

                            if (context.mounted) {
                              context.read<AddAdBloc>().add(
                                    AddAdEvent.addAd(
                                      userId: userId,
                                      type1: _selectedOption == "Предложение"
                                          ? "on"
                                          : "",
                                      type2: _selectedOption == "Спрос"
                                          ? "on"
                                          : "",
                                      categoryId: _selectedCategory != null
                                          ? _selectedCategory!.id.toString()
                                          : "0",
                                      subcategoryId: _selectedSubCategory !=
                                              null
                                          ? _selectedSubCategory!.id.toString()
                                          : "0",
                                      name: nameTextController.text,
                                      description:
                                          descriptionTextController.text,
                                      cityId: _selectedCity != null
                                          ? _selectedCity!.id.toString()
                                          : "",
                                      price: priceTextController.text,
                                      phone: phone,
                                      email: emailTextController.text,
                                      images: multipartFiles,
                                    ),
                                  );
                            }
                          }
                        : () {
                            checkFields();
                          },
                    child: Container(
                      height: 56,
                      width: double.infinity,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: isCorrectFields
                            ? const Color(0xFF5DB248)
                            : const Color(0xFFAAABAD),
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: const Text(
                        "Сохранить",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 18),
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                      height: 56,
                      width: double.infinity,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: const Color(0xFFE9EAEA),
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: const Text(
                        "Отмена",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class CustomTextField extends StatelessWidget {
  final String hintText;
  final TextEditingController textController;

  const CustomTextField({
    super.key,
    required this.hintText,
    required this.textController,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: textController,
      decoration: InputDecoration(
        hintText: hintText,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        filled: true,
        fillColor: Colors.grey.shade100,
      ),
    );
  }
}