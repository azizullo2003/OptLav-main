import 'dart:io' show Platform;
import 'package:assorted_layout_widgets/assorted_layout_widgets.dart';
import 'package:auto_route/auto_route.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:optlove/app/routes/router.gr.dart';
import 'package:optlove/presentation/registration/domain/entities/cities.dart';
import 'package:optlove/presentation/registration/view/bloc/search_city_bloc.dart';
import 'package:optlove/presentation/registration/view/widgets/reg_text_fields.dart';
import 'package:searchfield/searchfield.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:optlove/core/widgets/ios_keyboard_done_widget.dart';
// import 'package:keyboard_utils/keyboard_utils.dart';
// import 'package:keyboard_utils/keyboard_listener.dart' as keyboardListener;

import '../../../../app/theme/bloc/app_theme.dart';
import '../../../../app/theme/models/app_color_theme.dart';
import '../../../../app/utils/shared_preferences_helper.dart';
import '../../../../generated/assets.gen.dart';
import '../bloc/registration_bloc.dart';

class RegistrationPage extends StatefulWidget {
  const RegistrationPage({Key? key}) : super(key: key);

  @override
  State<RegistrationPage> createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController cityController = TextEditingController();

  var phoneMask = MaskTextInputFormatter(
      mask: '+7 (###) ###-##-##',
      filter: {"#": RegExp(r'[0-9]')},
      type: MaskAutoCompletionType.lazy);

  var emailMask = MaskTextInputFormatter(filter: {
    "#": RegExp(r'^[\+]?[(]?[0-9]{3}[)]?[-\s\.]?[0-9]{3}[-\s\.]?[0-9]{4,6}$')
  }, type: MaskAutoCompletionType.lazy);

  var focus = false;

  static final List<Cities> _cities = <Cities>[];
  Cities? _selectedCity;
  var isCorrectFields = false;
  var citySelected = false;
  var os = 0;
  var showSuggestion = false;

  // Hide keyboards btn iOS
  OverlayEntry? overlayEntry;
  // final _keyboardUtils = KeyboardUtils();

  showOverlay(BuildContext context) {
    if (overlayEntry != null) return;
    OverlayState overlayState = Overlay.of(context);
    overlayEntry = OverlayEntry(builder: (context) {
      return Positioned(
          bottom: MediaQuery.of(context).viewInsets.bottom,
          right: 0.0,
          left: 0.0,
          child: const IosKeyboardDoneWidget());
    });

    overlayState.insert(overlayEntry!);
  }

  removeOverlay() {
    if (overlayEntry != null) {
      overlayEntry?.remove();
      overlayEntry = null;
    }
  }
  // END Hide keyboards btn iOS

  @override
  void initState() {
    super.initState();
    cityController.addListener(() {
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
    });

    phoneController.addListener(() {
      setState(() {
        checkFields();
      });
    });

    emailController.addListener(() {
      setState(() {
        checkFields();
      });
    });

    // Hide keyboards btn iOS
    if (Platform.isIOS) {
      // _keyboardUtils.add(
      //     listener: keyboardListener.KeyboardListener(willHideKeyboard: () {
      //       removeOverlay();
      //     }, willShowKeyboard: (double keyboardHeight) {
      //       showOverlay(context);
      //     }));
    }
    // END keyboards btn iOS
  }

  @override
  void dispose() {
    // keyboards btn iOS
    if (Platform.isIOS) {
      // _keyboardUtils.removeAllKeyboardListeners();
    }
    // END keyboards btn iOS

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (Platform.isAndroid) {
      os = 2;
    } else if (Platform.isIOS) {
      os = 1;
    }

    final colorTheme = AppTheme.of(context).colorTheme;
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        color: Colors.transparent,
        elevation: 0,
        child: Padding(
          padding: const EdgeInsets.only(bottom: 5, left: 16),
          child: GestureDetector(
              onTap: () => _onBack(context), child: const Text('Назад')),
        ),
      ),
      resizeToAvoidBottomInset: true,
      appBar: _buildAppBar(colorTheme),
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(left: 16, right: 16),
        child: Container(
          alignment: Alignment.center,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                RegTextField(
                  isPassword: false,
                  controller: phoneController,
                  labelText: "Номер телефона",
                  keyboardType: TextInputType.phone,
                  inputFormatters: phoneMask,
                  validator: (value) {
                    if (isValidPhoneNumber(value!)) {
                      return "Некорректный номер телефона";
                    }
                    if (phoneController.text.length < 18) {
                      return "Короткий номер телефона";
                    }
                    return null;
                  },
                  function: () => phoneController.clear(),
                ),
                const SizedBox(height: 25),
                BlocConsumer<SearchCityBloc, SearchCityState>(
                  listener: (context, state) {
                    state.map(
                        failure: (loaded) {},
                        loading: (_) {},
                        loaded: (response) {
                          if (response.response.location.isNotEmpty) {
                            _cities.clear();
                            _cities.addAll(response.response.location);
                          } else {
                            //_onSuccessAuth(context);
                          }
                        });
                  },
                  builder: (context, state) {
                    return Form(
                        child: SearchField(
                      //offset: const Offset(0,-50),
                      controller: cityController,
                      suggestions: _cities
                          .map((city) => SearchFieldListItem("  ${city.name!}",
                              item: city))
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
                          suffixIconConstraints:
                              const BoxConstraints(minHeight: 20, minWidth: 20),
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
                          labelText: "Ваш город",
                          labelStyle: TextStyle(
                              color: colorTheme.greyText,
                              fontSize: 17,
                              fontWeight: FontWeight.normal)),
                      maxSuggestionsInViewPort: 5,
                      itemHeight: 40,
                      onSuggestionTap: (SearchFieldListItem<Cities> city) {
                        setState(() {
                          citySelected = true;
                          checkFields();
                          _selectedCity = city.item!;
                        });
                      },
                    ));
                  },
                ),
                const SizedBox(height: 25),
                RegTextField(
                    isPassword: false,
                    controller: emailController,
                    labelText: "Email",
                    keyboardType: TextInputType.emailAddress,
                    inputFormatters: emailMask,
                    validator: (value) => EmailValidator.validate(value!)
                        ? null
                        : "Введите корректный email",
                    function: () => emailController.clear()),
                BlocConsumer<RegistrationBloc, RegistrationState>(
                  listener: (context, state) {
                    state.map(failure: (loaded) {
                      Fluttertoast.showToast(
                          msg: "Ошибка соединения",
                          toastLength: Toast.LENGTH_LONG,
                          gravity: ToastGravity.BOTTOM,
                          timeInSecForIosWeb: 1,
                          backgroundColor: Colors.grey,
                          textColor: Colors.white,
                          fontSize: 16.0);
                    }, loading: (_) {
                      AlertDialog alert = AlertDialog(
                        content: Row(
                          children: [
                            const CircularProgressIndicator(),
                            Container(
                                margin: const EdgeInsets.only(left: 7),
                                child: const Text(" Загрузка...")),
                          ],
                        ),
                      );
                      showDialog(
                        barrierDismissible: false,
                        context: context,
                        builder: (BuildContext context) {
                          return alert;
                        },
                      );
                    }, loaded: (response) {
                      Navigator.pop(context);
                      if (!response.response.result) {
                        Fluttertoast.showToast(
                            msg: response.response.msg!,
                            toastLength: Toast.LENGTH_LONG,
                            gravity: ToastGravity.BOTTOM,
                            timeInSecForIosWeb: 1,
                            backgroundColor: Colors.grey,
                            textColor: Colors.white,
                            fontSize: 16.0);
                      } else {
                        _onSuccessRegistration(context, phoneController.text);
                      }
                    });
                  },
                  builder: (context, state) {
                    return Box(
                      width: double.infinity,
                      padding: const Pad(horizontal: 16, top: 40),
                      child: ElevatedButton(
                        onPressed: isCorrectFields
                            ? () async => _onEnter(
                                context,
                                phoneController.text,
                                emailController.text,
                                _selectedCity!)
                            : null,
                        style: ElevatedButton.styleFrom(
                            elevation: 0,
                            backgroundColor: isCorrectFields
                                ? const Color(0xFF5DB248)
                                : const Color(0xFFAAABAD),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(16),
                            ),
                            padding: const EdgeInsets.symmetric(vertical: 16),
                            textStyle: const TextStyle(
                                fontSize: 17, fontWeight: FontWeight.bold)),
                        child: const Text('Отправить'),
                      ),
                    );
                  },
                ),
                Box(
                    padding: const Pad(horizontal: 16, top: 25),
                    alignment: Alignment.center,
                    width: 300,
                    child: GestureDetector(
                      onTap: _launchUrlConf,
                      child: RichText(
                        textAlign: TextAlign.center,
                        text: TextSpan(
                          text: "Отправляя свои данные, вы соглашаетесь ",
                          style: TextStyle(
                              color: colorTheme.greyText, fontSize: 10),
                          children: <TextSpan>[
                            TextSpan(
                                text: "\nс политикой конфедициальности",
                                style: TextStyle(
                                    height: 1.5,
                                    color: colorTheme.blueSochi,
                                    decoration: TextDecoration.underline)),
                          ],
                        ),
                      ),
                    )),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _onEnter(BuildContext context, String phone, String email, Cities city) {
    final phone = phoneController.text.replaceAll(RegExp('[^0-9]'), '');
    BlocProvider.of<RegistrationBloc>(context).add(
      RegistrationEvent.register(
          phone: phone,
          email: email,
          city_id: city.id,
          city: city.name ?? "",
          os: os),
    );
  }

  void _onBack(BuildContext context) {
    context.router.navigateBack();
  }

  void checkFields() {
    if (phoneController.text.length == 18 &&
        EmailValidator.validate(emailController.text) &&
        citySelected) {
      isCorrectFields = true;
    } else {
      isCorrectFields = false;
    }
  }

  void _onSuccessRegistration(BuildContext context, String phone) async {
    await SharedPrefsHelper.rememberMe(true);
    context.router.push(
      EnterPinCodeRoute(phone: phone),
    );
  }

  PreferredSizeWidget _buildAppBar(AppColorTheme colorTheme) {
    return AppBar(
      automaticallyImplyLeading: false,
      centerTitle: true,
      backgroundColor: Colors.white,
      shadowColor: Colors.white,
      elevation: 0,
      title: Column(
        children: [
          const Text('Регистрация', style: TextStyle(color: Colors.black)),
          const SizedBox(
            height: 3,
          ),
          Text('Введите свои данные и мы пришлём код',
              style: TextStyle(
                  color: colorTheme.greyText,
                  fontSize: 13,
                  fontFamily: "",
                  fontWeight: FontWeight.normal)),
        ],
      ),
    );
  }

  bool isValidPhoneNumber(String value) =>
      RegExp(r'(^(?:[+0]9)?[0-9]{10,12}$)').hasMatch(value);

  Widget _buildArticle(
    List<Cities> articles,
  ) {
    print("_buildArticle ${articles.iterator}");
    return const Box();
  }

  Future<void> _launchUrlConf() async {
    final Uri url = Uri.parse("https://panel.optlav.ru/sogla.html");
    if (!await launchUrl(url, mode: LaunchMode.inAppWebView)) {
      throw 'Could not launch $url';
    }
  }
}
