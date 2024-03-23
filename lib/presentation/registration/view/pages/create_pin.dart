import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import '../../../../app/theme/bloc/app_theme.dart';
import '../../../../app/theme/models/app_color_theme.dart';
import '../widgets/pin_keyboard_widget.dart';


class CreatePinPage extends StatefulWidget {
  const CreatePinPage({Key? key}) : super(key: key);

  @override
  _CreatePinPageState createState() => _CreatePinPageState();
}

class _CreatePinPageState extends State<CreatePinPage> {
  // text controller
  final TextEditingController _myController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final colorTheme = AppTheme.of(context).colorTheme;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: _buildAppBar(colorTheme),
      backgroundColor: Colors.white,
      body: Column(
        children: [
          // display the entered numbers
          Padding(
            padding: const EdgeInsets.all(20),
            child: SizedBox(
              height: 70,
              child: Center(
                  child:
                  Padding(
                    padding: const EdgeInsets.only(right: 60, left: 60),
                    child: PinCodeTextField(
                      controller: _myController,
                      textStyle: const TextStyle(
                          fontSize: 32,
                          fontWeight: FontWeight.bold
                      ),
                      keyboardType: TextInputType.phone,
                      blinkWhenObscuring: true,
                      appContext: context,
                      length: 4,
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
                          activeColor: Colors.black
                      ),
                      animationDuration: const Duration(milliseconds: 300),
                      backgroundColor: Colors.white,
                      enableActiveFill: true,
                      onCompleted: (v) {
                        _myController.text = "";
                      },
                      onChanged: (value) {
                        setState(() {
                          //currentText = value;
                        });
                      },
                      beforeTextPaste: (text) {
                        return true;
                      },
                    ),
                  )
                  // TextField(
                  //   controller: _myController,
                  //   textAlign: TextAlign.center,
                  //   showCursor: false,
                  //   style: const TextStyle(fontSize: 40),
                  //   // Disable the default soft keybaord
                  //   keyboardType: TextInputType.none,
                  // )

              ),
            ),
          ),
          // implement the custom NumPad
          const SizedBox(
            height: 60,
          ),
          NumPad(
            buttonSize: 75,
            buttonColor: Colors.purple,
            iconColor: Colors.deepOrange,
            controller: _myController,
            delete: () {
              _myController.text = _myController.text
                  .substring(0, _myController.text.length - 1);
            },
            // do something with the input numbers
            onSubmit: () {
              debugPrint('Your code: ${_myController.text}');
              showDialog(
                  context: context,
                  builder: (_) => AlertDialog(
                    content: Text(
                      "You code is ${_myController.text}",
                      style: const TextStyle(fontSize: 30),
                    ),
                  ));
            },
          ),
        ],
      ),
    );
  }

  PreferredSizeWidget _buildAppBar(AppColorTheme colorTheme) {
    return AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        backgroundColor: Colors.white,
        shadowColor: Colors.white,
        elevation: 0,
        title: Column(children: [
          Text('Придумайте пароль для входа',
              style: TextStyle(fontSize: 17, color: colorTheme.blackText)),
        ]));
  }
}