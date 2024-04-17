import 'package:assorted_layout_widgets/assorted_layout_widgets.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:optlove/app/utils/string_utils.dart';
import 'package:optlove/presentation/profile/data/models/user_inn_info.dart';
import 'package:optlove/presentation/profile/view/bloc/profile_bloc.dart';
import 'package:optlove/presentation/profile/view/widgets/address_widget.dart';
import 'package:optlove/presentation/profile/view/widgets/profile_text_field.dart';
import 'package:optlove/presentation/registration/data/models/user_info.dart';
import 'package:searchfield/searchfield.dart';
import 'package:yandex_mobileads/mobile_ads.dart';

import '../../../../app/routes/router.gr.dart';
import '../../../../app/theme/bloc/app_theme.dart';
import '../../../../app/utils/shared_preferences_helper.dart';
import '../../../../generated/assets.gen.dart';
import '../../../sendactivity/bloc/sendactivity_bloc.dart';
import '../../../../core/constants.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final singleFormat = FilteringTextInputFormatter.singleLineFormatter;
  final digitsFormat = FilteringTextInputFormatter.digitsOnly;
  final List<String> _fields = <String>[];
  final List<String> _values = <String>[];
  final List<String> _regions = <String>[];
  final List<UserInnInfo> _innInfo = <UserInnInfo>[];
  bool? isAddressExist;
  bool isFirstAddressCitySelected = false;
  String? key = "";

  /// Переменная указывает на то, был ли верно указан ИНН. Если 0 то не верно
  /// Если 1 то верно и поле блочится
  var innCorrect = "0";

  var commentWidgets = <AddressPage>[];
  var existWidgets = <AddressPage>[];

  final phoneMask = MaskTextInputFormatter(
      mask: '+7 (###) ###-##-##',
      filter: {"#": RegExp(r'[0-9]')},
      type: MaskAutoCompletionType.lazy);

  var emailMask = MaskTextInputFormatter(filter: {
    "#": RegExp(r'^[\+]?[(]?[0-9]{3}[)]?[-\s\.]?[0-9]{3}[-\s\.]?[0-9]{4,6}$')
  }, type: MaskAutoCompletionType.lazy);

  final TextEditingController organizationController = TextEditingController();
  final TextEditingController innController = TextEditingController();
  final TextEditingController ogrnController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController addPhoneController = TextEditingController();
  final TextEditingController emailController = TextEditingController();

  late final _interstitialAD;

  @override
  void initState() {
    print("build initState");
    super.initState();
    _sendActivity(context);
    BlocProvider.of<ProfileBloc>(context).add(const ProfileEvent.getUserData());
    phoneController.addListener(() {});
    innController.addListener(() {
      if (innController.text.length >= 10) {
        setState(() {
          BlocProvider.of<ProfileBloc>(context).add(
            ProfileEvent.innSearch(innController.text),
          );
        });
      }
    });

    _initInterstitialAD();
  }

  _initInterstitialAD() async {
    _interstitialAD = await InterstitialAd.create(
      adUnitId: getYandexInterstitialID(),
      onAdLoaded: () {},
      onAdFailedToLoad: (error) {},
    );
  }

  // @override
  // void dispose() {
  //   print("dispose Profile");
  //   super.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    print("build Profile");
    final colorTheme = AppTheme.of(context).colorTheme;
    return SingleChildScrollView(
        child: Padding(
      padding:
          EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
      child: Container(
          padding: const EdgeInsets.all(16),
          child: Column(children: [
            BlocListener<ProfileBloc, ProfileState>(
              listener: (context, state) {
                state.maybeMap(
                    failure: (e) {
                      Fluttertoast.showToast(
                          msg: "Ошибка подключения ${e.error.message}",
                          toastLength: Toast.LENGTH_LONG,
                          gravity: ToastGravity.BOTTOM,
                          timeInSecForIosWeb: 1,
                          backgroundColor: Colors.grey,
                          textColor: Colors.white,
                          fontSize: 16.0);
                    },
                    loaded: (response) {
                      WidgetsBinding.instance.addPostFrameCallback((_) {
                        innCorrect = response.response.user_info.inn_correct;
                        setState(() {
                          for (var i = 0;
                              i < response.response.locations.length;
                              i++) {
                            if (i == 0 &&
                                response.response.locations[0].adres != null &&
                                !isFirstAddressCitySelected) {
                              var address = AddressPage(
                                  //readonly: true,
                                  citySelectListener: () =>
                                      _onFirstAddressCitySelected(),
                                  addressNumber: commentWidgets.length + 1,
                                  removeAddress: () => _onRemoveAddress(),
                                  city: response.response.locations[i]);
                              commentWidgets.add(address);
                              print("Add Exist Address");
                              existWidgets.add(address);
                              // commentWidgets.add(AddressPage(
                              //   //readonly: true,
                              //     citySelectListener: () =>
                              //     _onFirstAddressCitySelected(),
                              //     addressNumber: commentWidgets.length + 1,
                              //     removeAddress: () => _onRemoveAddress(),
                              //     city: response.response.locations[i])
                              // );
                            } else {
                              var address = AddressPage(
                                  addressNumber: commentWidgets.length + 1,
                                  removeAddress: () => _onRemoveAddress(),
                                  city: response.response.locations[i]);
                              commentWidgets.add(address);
                              existWidgets.add(address);
                              // commentWidgets.add(AddressPage(
                              //     addressNumber: commentWidgets.length + 1,
                              //     removeAddress: () => _onRemoveAddress(),
                              //     city: response.response.locations[i])
                              // );
                            }
                          }
                        });
                        fillFieldsFromResponse(response.response.user_info);
                      });
                    },
                    innLoaded: (response) {
                      setState(() {
                        _innInfo.clear();
                        if (response.response.data != null) {
                          _innInfo.add(response.response.data!);
                        }
                      });
                    },
                    dataChanged: (response) {
                      if (response.response.result) {
                        Fluttertoast.showToast(
                            msg: "Данные успешно изменены",
                            toastLength: Toast.LENGTH_LONG,
                            gravity: ToastGravity.BOTTOM,
                            timeInSecForIosWeb: 1,
                            backgroundColor: Colors.grey,
                            textColor: Colors.white,
                            fontSize: 16.0);
                        context.router.push(
                          const MainRoute(),
                        );
                      }
                    },
                    orElse: () {});
              },
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 16),
                    InkWell(
                      onTap: () => context.router.push(
                        const MainRoute(),
                      ),
                      child: Box(
                        child: Assets.images.back.svg(fit: BoxFit.cover),
                      ),
                    ),
                    const SizedBox(height: 12),
                    Text(
                      "Ваши данные",
                      style: TextStyle(
                          fontSize: 32,
                          fontWeight: FontWeight.w700,
                          color: colorTheme.blackText),
                    ),
                    const SizedBox(height: 12),
                    Text(
                      "Данные юр. лица",
                      style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w700,
                          color: colorTheme.blackText),
                    ),
                    const SizedBox(height: 30),
                    ProfileTextField(
                        inputFormatters: singleFormat,
                        labelText: "Наименование организации",
                        keyboardType: TextInputType.text,
                        controller: organizationController,
                        function: () => organizationController.clear()),
                    const SizedBox(height: 30),
                    (() {
                      if (innCorrect == "0") {
                        return Form(
                            child: SearchField(
                          controller: innController,
                          suggestions: _innInfo
                              .map((inn) =>
                                  SearchFieldListItem(inn.name, item: inn))
                              .toList(),
                          suggestionAction: SuggestionAction.unfocus,
                          textInputAction: TextInputAction.next,
                          searchStyle: TextStyle(
                            fontSize: 17,
                            color: Colors.black.withOpacity(0.8),
                          ),
                          validator: (x) {
                            if (!_innInfo.contains(x) || x!.isEmpty) {
                              return 'Please Enter a valid State';
                            }
                            return null;
                          },
                          onSuggestionTap:
                              (SearchFieldListItem<UserInnInfo> inn) {
                            setState(() {
                              innCorrect = "1";
                              innController.text = inn.item!.inn;
                              ogrnController.text = inn.item!.ogrn;
                              organizationController.text = inn.item!.name;
                            });
                          },
                          searchInputDecoration: InputDecoration(
                              suffixIconConstraints: const BoxConstraints(
                                  minHeight: 20, minWidth: 20),
                              enabledBorder: UnderlineInputBorder(
                                  borderSide:
                                      BorderSide(color: colorTheme.borderGray)),
                              focusedBorder: UnderlineInputBorder(
                                  borderSide:
                                      BorderSide(color: colorTheme.borderGray)),
                              labelText: "ИНН",
                              labelStyle: TextStyle(
                                  color: colorTheme.greyText,
                                  fontSize: 17,
                                  fontWeight: FontWeight.normal)),
                          maxSuggestionsInViewPort: 5,
                          itemHeight: 40,
                        ));
                      } else {
                        return ProfileTextField(
                            readOnly: true,
                            labelText: "ИНН",
                            keyboardType: TextInputType.phone,
                            inputFormatters: digitsFormat,
                            controller: innController,
                            function: () => ogrnController.clear());
                      }
                    }()),
                    const SizedBox(height: 30),
                    ProfileTextField(
                        readOnly: innCorrect == "1",
                        labelText: "ОГРН",
                        keyboardType: TextInputType.phone,
                        inputFormatters: digitsFormat,
                        controller: ogrnController,
                        function: () => ogrnController.clear()),
                    const SizedBox(height: 30),
                    Text(
                      "Контакты",
                      style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w700,
                          color: colorTheme.blackText),
                    ),
                    const SizedBox(height: 30),
                    ProfileTextField(
                        labelText: "Телефон",
                        keyboardType: TextInputType.phone,
                        inputFormatters: phoneMask,
                        controller: phoneController,
                        function: () => phoneController.clear()),
                    const SizedBox(height: 30),
                    ProfileTextField(
                        labelText: "Доп. телефон",
                        keyboardType: TextInputType.phone,
                        inputFormatters: phoneMask,
                        controller: addPhoneController,
                        function: () => addPhoneController.clear()),
                    const SizedBox(height: 30),
                    ProfileTextField(
                        labelText: "Электронная почта",
                        keyboardType: TextInputType.emailAddress,
                        inputFormatters: emailMask,
                        controller: emailController,
                        function: () => emailController.clear()),
                    const SizedBox(height: 30),
                    Text(
                      "Города и адреса доставки",
                      style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w700,
                          color: colorTheme.blackText),
                    ),
                    const SizedBox(height: 30),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: commentWidgets,
                    ),
                    const SizedBox(height: 15),
                    if (commentWidgets.length <= 4)
                      Box(
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: () => {
                            if (commentWidgets.length <= 4)
                              {
                                setState(() {
                                  commentWidgets.add(AddressPage(
                                    addressNumber: commentWidgets.length + 1,
                                    removeAddress: _onRemoveAddress,
                                  ));
                                })
                              }
                          },
                          style: ElevatedButton.styleFrom(
                              elevation: 0,
                              backgroundColor: colorTheme.borderGray,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(16),
                              ),
                              padding: const EdgeInsets.symmetric(vertical: 8),
                              textStyle: const TextStyle(
                                  fontSize: 13, fontWeight: FontWeight.w400)),
                          child: Text(
                            'Добавить адрес',
                            style: TextStyle(
                              color: colorTheme.blackText,
                            ),
                          ),
                        ),
                      ),
                    const SizedBox(height: 16),
                    Box(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () => _onSaveUserData(),
                        style: ElevatedButton.styleFrom(
                            elevation: 0,
                            backgroundColor: colorTheme.primary,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(16),
                            ),
                            padding: const EdgeInsets.symmetric(vertical: 16),
                            textStyle: const TextStyle(
                                fontSize: 17, fontWeight: FontWeight.w600)),
                        child: const Text(
                          'Сохранить',
                        ),
                      ),
                    )
                  ]),
            ),
          ])),
    ));
  }

  void _onRemoveAddress() {
    setState(() {
      commentWidgets.removeLast();
    });
  }

  void _onFirstAddressCitySelected() {
    setState(() {
      isFirstAddressCitySelected = true;
    });
    //BlocProvider.of<UserBloc>(context).add(const UserEvent.getUserData());
  }

  void _onSaveUserData() async {
    await SharedPrefsHelper.setName(organizationController.text);
    await SharedPrefsHelper.setInn(innController.text);
    _fields.add("name");
    _fields.add("inn");
    _fields.add("ogrn");
    _fields.add("phone");
    _fields.add("fphone");
    _fields.add("email");
    _fields.add("inn_correct");
    _values.add(organizationController.text);
    _values.add(innController.text);
    _values.add(ogrnController.text);
    _values.add(phoneController.text.replaceAll(RegExp('[^0-9]'), ''));
    _values.add(addPhoneController.text.replaceAll(RegExp('[^0-9]'), ''));
    _values.add(emailController.text);
    _values.add(innCorrect);
    for (var element in commentWidgets) {
      if (element.address.isNotEmpty && element.cityString.isNotEmpty) {
        isAddressExist = true;
        print("Exist add ${element.address}");
        _regions
            .add("${element.cityString}|${element.address}|${element.comment}");
      } else {
        isAddressExist = false;
      }
    }
    await SharedPrefsHelper.setAddressExist(isAddressExist);
    if (isAddressExist!) {
      await _interstitialAD.load(adRequest: const AdRequest());
      await _interstitialAD.show();
      await _interstitialAD.waitForDismiss();

      BlocProvider.of<ProfileBloc>(context)
          .add(ProfileEvent.changeUserInfo(_fields, _values, _regions));
    } else {
      _regions.clear();
      Fluttertoast.showToast(
          msg: "Заполните данные адресов",
          toastLength: Toast.LENGTH_LONG,
          gravity: ToastGravity.BOTTOM,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.grey,
          textColor: Colors.white,
          fontSize: 16.0);
    }
  }

  void _sendActivity(BuildContext context) {
    BlocProvider.of<SendActivityBloc>(context)
        .add(const SendActivityEvent.sendActivity(screenName: "Экран профиля"));
  }

  Future<void> fillFieldsFromResponse(UserInfo user) async {
    phoneController.text = StringUtils.maskForPhone(user.phone);
    if (user.fphone != null) {
      addPhoneController.text = StringUtils.maskForPhone(user.fphone!);
    }
    if (user.email != null) {
      emailController.text = user.email!;
    }
    if (user.inn != null) {
      innController.text = user.inn!;
    }

    organizationController.text = user.name ?? "";
    if (user.ogrn != null) {
      ogrnController.text = user.ogrn!;
    }
  }
}
