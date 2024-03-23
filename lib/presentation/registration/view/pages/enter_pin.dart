import 'dart:async';
import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:optlove/app/routes/router.gr.dart';
import 'package:optlove/presentation/registration/view/bloc/auth_bloc.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../../app/theme/bloc/app_theme.dart';
import '../../../../app/theme/models/app_color_theme.dart';
import '../bloc/registration_bloc.dart';

class EnterPinCodePage extends StatefulWidget {
  final String phone;
  const EnterPinCodePage({Key? key, required this.phone}) : super(key: key);

  @override
  State<EnterPinCodePage> createState() => _EnterPinCodePageState();
}

class _EnterPinCodePageState extends State<EnterPinCodePage> {
  FocusNode focusNode = FocusNode();
  late Timer _timer;
  int _seconds = 60;
  var isTimerEnd = false;
  var enteredPin = "";
  var os = 0;
  final TextEditingController pinController = TextEditingController();

  @override
  void initState() {
    super.initState();
    startTimer();
  }

  @override
  void dispose() {
    FocusScope.of(context).unfocus();
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    FocusScope.of(context).requestFocus(focusNode);
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
          child: InkWell(
              onTap: () => _onBack(context), child: const Text('Назад')),
        ),
      ),
      resizeToAvoidBottomInset: false,
      appBar: _buildAppBar(colorTheme),
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(left: 16, right: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
                "Введите код присланный на номер *******${widget.phone.substring(widget.phone.length - 5)}",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 22,
                    color: colorTheme.blackText)),
            Padding(
              padding: const EdgeInsets.only(right: 60, left: 60),
              child: BlocConsumer<AuthBloc, AuthState>(
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
                          msg: "Неправильный пин-код",
                          toastLength: Toast.LENGTH_LONG,
                          gravity: ToastGravity.BOTTOM,
                          timeInSecForIosWeb: 1,
                          backgroundColor: Colors.grey,
                          textColor: Colors.white,
                          fontSize: 16.0);
                    } else {
                      _onSaveUserId(response.response.user_info!.id);
                      _pinSuccess(context);
                    }
                  });
                },
                builder: (context, state) {
                  return PinCodeTextField(
                    focusNode: focusNode,
                    controller: pinController,
                    textStyle: const TextStyle(
                        fontSize: 32, fontWeight: FontWeight.bold),
                    keyboardType: TextInputType.phone,
                    blinkWhenObscuring: true,
                    appContext: context,
                    length: 5,
                    cursorColor: Colors.transparent,
                    animationType: AnimationType.none,
                    pinTheme: PinTheme(
                        shape: PinCodeFieldShape.underline,
                        borderRadius: BorderRadius.circular(5),
                        fieldHeight: 70,
                        fieldWidth: 32,
                        activeFillColor: Colors.white,
                        inactiveColor: Colors.black,
                        inactiveFillColor: Colors.white,
                        selectedFillColor: Colors.white,
                        selectedColor: Colors.black,
                        activeColor: Colors.black),
                    animationDuration: const Duration(milliseconds: 300),
                    backgroundColor: Colors.white,
                    enablePinAutofill: true,
                    enableActiveFill: true,
                    onCompleted: (pin) {
                      enteredPin = pin;
                      pinController.text = "";
                      _checkPinPressed(context, pin);
                    },
                    onChanged: (value) {
                      setState(() {
                        //currentText = value;
                      });
                    },
                    beforeTextPaste: (text) {
                      return true;
                    },
                  );
                },
              ),
            ),
            GestureDetector(
              onTap: isTimerEnd
                  ? () {
                      sendPinAgain(context);
                    }
                  : null,
              child: GestureDetector(
                onTap: isTimerEnd
                    ? () => _onRepeatPin(context, widget.phone)
                    : null,
                child: Text(
                    !isTimerEnd
                        ? 'отправить код повторно через $_seconds сек.'
                        : "отправить код повторно",
                    style: TextStyle(
                        color: !isTimerEnd
                            ? colorTheme.greyText
                            : colorTheme.blueSochi,
                        fontSize: 13,
                        fontFamily: "",
                        fontWeight: FontWeight.normal)),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _onSaveUserId(String userId) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString('userId', userId);
    await prefs.setString(
        'phone', widget.phone.replaceAll(RegExp('[^0-9]'), ''));
  }

  Future<void> sendPinAgain(BuildContext context) async {
    setState(() {
      _seconds = 5;
      isTimerEnd = false;
      startTimer();
    });
  }

  void _onRepeatPin(BuildContext context, String phone) {
    final phone0 = phone.replaceAll(RegExp('[^0-9]'), '');
    BlocProvider.of<RegistrationBloc>(context).add(
      RegistrationEvent.restorePass(phone: phone0),
    );
  }

  void _checkPinPressed(BuildContext context, String pin) {
    final login = widget.phone.replaceAll(RegExp('[^0-9]'), '');
    BlocProvider.of<AuthBloc>(context).add(
      AuthEvent.auth(phone: login, password: pin, os: os),
    );
  }

  void _pinSuccess(BuildContext context) {
    _timer.cancel();
    context.router.replace(
      const MainRoute(),
    );
  }

  void startTimer() {
    const oneSec = Duration(seconds: 1);
    _timer = Timer.periodic(
      oneSec,
      (Timer timer) {
        if (_seconds == 0) {
          setState(() {
            isTimerEnd = true;
            timer.cancel();
          });
        } else {
          setState(() {
            _seconds--;
          });
        }
      },
    );
  }

  void _onBack(BuildContext context) {
    context.router.navigateBack();
  }

  PreferredSizeWidget _buildAppBar(AppColorTheme colorTheme) {
    return AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        backgroundColor: Colors.white,
        shadowColor: Colors.white,
        elevation: 0,
        title: Column(children: [
          Text('Введите присланный код',
              style: TextStyle(fontSize: 17, color: colorTheme.blackText)),
        ]));
  }
}
