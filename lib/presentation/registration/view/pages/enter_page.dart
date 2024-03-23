import 'dart:io' show Platform;
import 'package:assorted_layout_widgets/assorted_layout_widgets.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:optlove/app/routes/router.gr.dart';
import 'package:optlove/presentation/registration/view/bloc/auth_bloc.dart';
import 'package:optlove/presentation/registration/view/widgets/reg_text_fields.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../app/theme/bloc/app_theme.dart';
import '../../../../app/theme/models/app_color_theme.dart';
import '../../../../app/utils/shared_preferences_helper.dart';
import '../../../../generated/assets.gen.dart';

class EnterPage extends StatefulWidget {
  const EnterPage({Key? key}) : super(key: key);

  @override
  State<EnterPage> createState() => _EnterPageState();
}

class _EnterPageState extends State<EnterPage> {
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();



  var phoneMask = MaskTextInputFormatter(
      mask: '+7 (###) ###-##-##',
      filter: {"#": RegExp(r'[0-9]')},
      type: MaskAutoCompletionType.lazy);

  var emailMask = MaskTextInputFormatter(filter: {
    "#": RegExp(r'^[\+]?[(]?[0-9]{3}[)]?[-\s\.]?[0-9]{3}[-\s\.]?[0-9]{4,6}$')
  }, type: MaskAutoCompletionType.lazy);

  var digits = MaskTextInputFormatter(
      filter: {"#": RegExp(r'[0-9]')}, type: MaskAutoCompletionType.lazy);

  var focus = false;
  var rememberMe = true;
  var isPassword = true;
  var isCorrectFields = false;
  var os = 0;
  static const List<String> _kOptions = <String>[];

  @override
  void initState() {
    super.initState();
    phoneController.addListener(() {
     setState(() {
       checkFields();
     });
    });

    passwordController.addListener(() {
      setState(() {
        checkFields();
      });
    });
  }

  @override
  void dispose() {
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
      bottomNavigationBar:  BottomAppBar(
        color: Colors.transparent,
        elevation: 0,
        child: Padding(
          padding: const EdgeInsets.only(bottom: 5, left: 16),
          child: InkWell(
            onTap: () => _onBack(context),
              child: const Text('Назад')),
        ),
      ),
      appBar: _buildAppBar(colorTheme),
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: true,
      body: Padding(
        padding: const EdgeInsets.only(left: 16, right: 16),
        child: Container(
          alignment: Alignment. center,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                RegTextField(
                  controller: phoneController,
                  labelText: "Номер телефона",
                  isPassword: false,
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
                RegTextField(
                    controller: passwordController,
                    labelText: "Пароль",
                    isPassword: isPassword,
                    length: 5,
                    isEyeIcon: true,
                    keyboardType: TextInputType.number,
                    inputFormatters: digits,
                    validator: (value) {

                      if (passwordController.text.length < 5) {
                        return "Пароль состоит из 5 символов";
                      }

                      return null;
                    },
                    function: () => setState((){
                      if (isPassword){
                        isPassword = false;
                      } else {
                        isPassword = true;
                      }
                    })
                ),
                const SizedBox(height: 40),
                Row(
                  children:  [
                    const Text(
                      "Запомнить меня",
                      style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
                    ),
                    const Spacer(),
                    GestureDetector(
                      onTap: () => setState(() {
                        if(!rememberMe) {
                          rememberMe = true;
                        } else {
                          rememberMe = false;
                        }
                      }),
                        child: rememberMe ?
                        Assets.images.checked.svg() :
                        Assets.images.unchecked.svg())
                  ],
                ),
                GestureDetector(
                  onTap: () => _onForgotPassword(context),
                  child: Box(
                    padding: const Pad(top: 30),
                    child: Assets.images.startReg.forgotPass
                        .svg(fit: BoxFit.cover),
                  ),
                ),
                BlocConsumer<AuthBloc, AuthState>(
                  listener: (context, state) {
                    state.map(
                        failure: (loaded) {
                          Navigator.pop(context);
                      Fluttertoast.showToast(
                          msg: "Ошибка ввода данных",
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
                            msg: "Неправльные пароль или логин",
                            toastLength: Toast.LENGTH_LONG,
                            gravity: ToastGravity.BOTTOM,
                            timeInSecForIosWeb: 1,
                            backgroundColor: Colors.grey,
                            textColor: Colors.white,
                            fontSize: 16.0);
                      } else {
                       if(response.response.user_info!.id.isNotEmpty) {
                         _onSaveUserInfo(
                            response.response.user_info!.id,
                        response.response.user_info!.phone);
                         SharedPrefsHelper.setName(response.response.user_info!.name);
                         SharedPrefsHelper.setInn(response.response.user_info!.inn);
                         if(response.response.user_info!.asres_odin != null){
                           SharedPrefsHelper.setAddressExist(true);
                         }
                       }
                        _onSuccessAuth(context);
                      }
                    });
                  },
                  builder: (context, state) {
                    return Box(
                      width: double.infinity,
                      padding: const Pad(horizontal: 16, top: 40),
                      child: ElevatedButton(
                        onPressed: isCorrectFields ? () async => _onEnter(
                            context,
                        phoneController.text,
                        passwordController.text) : null,
                        style: ElevatedButton.styleFrom(
                            elevation: 0, backgroundColor: isCorrectFields ? const Color(0xFF5DB248) :
                            const Color(0xFFAAABAD) ,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(16),
                            ),
                            padding: const EdgeInsets.symmetric(vertical: 16),
                            textStyle: const TextStyle(
                                fontSize: 17, fontWeight: FontWeight.bold)),
                        child: const Text('Войти'),
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
                          style:
                              TextStyle(color: colorTheme.greyText, fontSize: 10),
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

  void checkFields(){
    if (phoneController.text.length == 18
        && passwordController.text.length == 5) {
      isCorrectFields = true;
    } else {
      isCorrectFields = false;
    }
  }

  void _onEnter(BuildContext context, String phone, String password) {
    final phone = phoneController.text.replaceAll(RegExp('[^0-9]'), '');
    BlocProvider.of<AuthBloc>(context).add(
      AuthEvent.auth(
          phone: phone,
      password: password,
      os: os),
    );
  }

  void _onSuccessAuth(BuildContext context) {
    if(rememberMe){
      _onRememberMe();
    }
    context.router.push(
      const MainRoute(),
    );
  }

  void _onRememberMe() async {
    await SharedPrefsHelper.rememberMe(true);
  }
  
  void _onForgotPassword (BuildContext context) {
    context.router.push(
      const ForgotPasswordRoute(),
    );
  }

  void _onBack(BuildContext context) {
    context.router.navigateBack();
  }

  void _onSaveUserInfo(String userId, String phone) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString('userId', userId);
    await prefs.setString('phone', phone);
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
          const Text('Вход в систему', style: TextStyle(color: Colors.black)),
          const SizedBox(
            height: 3,
          ),
          Text('Введите логин и пароль',
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

  Future<void> _launchUrlConf() async {
    final Uri url = Uri.parse("https://panel.optlav.ru/sogla.html");
    if (!await launchUrl(url, mode: LaunchMode.inAppWebView)) {
      throw 'Could not launch $url';
    }
  }

}
