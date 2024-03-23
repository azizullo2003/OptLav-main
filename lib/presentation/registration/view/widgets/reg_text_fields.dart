import 'package:assorted_layout_widgets/assorted_layout_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../../app/theme/bloc/app_theme.dart';
import '../../../../generated/assets.gen.dart';

class RegTextField extends StatefulWidget{

  final String labelText;
  final TextInputType keyboardType;
  final TextInputFormatter inputFormatters;
  final TextEditingController controller;
  final FormFieldValidator<String>? validator;
  final bool isPassword;
  final int? length;
  final bool? isEyeIcon;
  final VoidCallback function;

  const RegTextField({super.key,
    required this.labelText,
    required this.keyboardType,
    required this.inputFormatters,
    required this.controller,
    this.validator,
    required this.function,
    required this.isPassword,
    this.length,
    this.isEyeIcon,});


  @override
  State<StatefulWidget> createState() => _RegTextField();

}

class _RegTextField extends State<RegTextField>{
  var focus = false;
  var isEyeOpen = false;

  var icon = Assets.images.startReg.clearField.svg();



  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (widget.labelText == "Пароль"){
      if (!widget.isPassword){
        icon = Assets.images.startReg.eyeOpened.svg();
      } else {
        icon = Assets.images.startReg.eyeClosed.svg();
      }
    }
    final colorTheme = AppTheme.of(context).colorTheme;
    return Focus(
      child: Form(
        autovalidateMode: AutovalidateMode.onUserInteraction,
        child: TextFormField(
          obscureText: widget.isPassword,
          maxLength: widget.length,
          validator: widget.validator,
          controller: widget.controller,
          inputFormatters: [widget.inputFormatters],
          cursorColor: colorTheme.greyText,
          keyboardType: widget.keyboardType,
          decoration: InputDecoration(
              suffixIconConstraints:
              const BoxConstraints(minHeight: 20, minWidth: 20),
              suffixIcon: focus
                  ? InkWell(
                onTap: widget.function,
                    child: Box(
                child: icon,
              ),
                  )
                  : null,
              counterText: "",
              enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: colorTheme.borderGray)),
              focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: colorTheme.borderGray)),
              labelText: widget.labelText,
              labelStyle: TextStyle(
                  color: colorTheme.greyText,
                  fontSize: 17,
                  fontWeight: FontWeight.normal)),
        ),
      ),
      onFocusChange: (hasFocus){
        if (hasFocus) {
          setState(() {
            focus = true;
          });
        } else {
          setState(() {
            focus = false;
          });
        }
      },
    );
  }

}