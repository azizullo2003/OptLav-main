import 'package:assorted_layout_widgets/assorted_layout_widgets.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:optlove/presentation/registration/view/widgets/reg_text_fields.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../app/routes/router.gr.dart';
import '../../../../app/theme/bloc/app_theme.dart';
import '../../../../app/theme/models/app_color_theme.dart';
import '../bloc/registration_bloc.dart';

class ForgotPasswordPage extends StatefulWidget {
  const ForgotPasswordPage({Key? key}) : super(key: key);

  @override
  State<ForgotPasswordPage> createState() => _ForgotPasswordPageState();
}

class _ForgotPasswordPageState extends State<ForgotPasswordPage> {
  final TextEditingController phoneController = TextEditingController();

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
  var rememberMe = false;
  var isPassword = true;
  var isCorrectFields = false;

  @override
  void initState() {
    super.initState();
    phoneController.addListener(() {
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
    final colorTheme = AppTheme.of(context).colorTheme;
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        color: Colors.transparent,
        elevation: 0,
        child: Padding(
          padding: const EdgeInsets.only(bottom: 5, left: 16),
          child: InkWell(
              onTap: () => _onBack(context), child: const Text('Назад')),
        ),
      ),
      appBar: _buildAppBar(colorTheme),
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(left: 16, right: 16),
        child: Container(
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
              const SizedBox(height: 40),
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
                      _onSuccessRestore(context, phoneController.text);
                    }
                  });
                },
                builder: (context, state) {
                  return Box(
                    width: double.infinity,
                    padding: const Pad(horizontal: 16, top: 40),
                    child: ElevatedButton(
                      onPressed: isCorrectFields
                          ? () async => _onEnter(context, phoneController.text)
                          : null,
                      style: ElevatedButton.styleFrom(
                          elevation: 0,
                          backgroundColor: isCorrectFields
                              ? const Color(0xFF404247)
                              : const Color(0xFFAAABAD),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16),
                          ),
                          padding: const EdgeInsets.symmetric(vertical: 16),
                          textStyle: const TextStyle(
                              fontSize: 17, fontWeight: FontWeight.bold)),
                      child: const Text(
                        'Восстановить пароль',
                        style: TextStyle(color: Colors.white),
                      ),
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
    );
  }

  void checkFields() {
    if (phoneController.text.length == 18) {
      isCorrectFields = true;
    } else {
      isCorrectFields = false;
    }
  }

  void _onEnter(BuildContext context, String phone) {
    final phone = phoneController.text.replaceAll(RegExp('[^0-9]'), '');
    BlocProvider.of<RegistrationBloc>(context).add(
      RegistrationEvent.restorePass(phone: phone),
    );
  }

  void _onSuccessRestore(BuildContext context, String phone) {
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
          const Text('Восстановление пароля',
              style: TextStyle(color: Colors.black)),
          const SizedBox(
            height: 3,
          ),
          Text('Введите свои данные указанные при регистрации',
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: colorTheme.greyText,
                  fontSize: 13,
                  fontFamily: "",
                  fontWeight: FontWeight.normal)),
        ],
      ),
    );
  }

  void _onBack(BuildContext context) {
    context.router.navigateBack();
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
