
import 'package:assorted_layout_widgets/assorted_layout_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../../app/theme/bloc/app_theme.dart';
import '../../../../generated/assets.gen.dart';

class ProfileTextField extends StatefulWidget{

  final String labelText;
  final TextInputType keyboardType;
  final TextInputFormatter inputFormatters;
  final TextEditingController controller;
  final FormFieldValidator<String>? validator;
  final int? length;
  final bool? isEyeIcon;
  final bool? readOnly;
  final VoidCallback function;

  const ProfileTextField({super.key,
    required this.labelText,
    required this.keyboardType,
    required this.inputFormatters,
    required this.controller,
    this.validator,
    this.length,
    this.isEyeIcon, required this.function,
    this.readOnly});


  @override
  State<StatefulWidget> createState() => _ProfileTextField();

}

class _ProfileTextField extends State<ProfileTextField>{
  var focus = false;
  var isEyeOpen = false;
  var readOnly = false;

  var icon = Assets.images.startReg.clearField.svg();

  @override
  void initState() {
    if(widget.readOnly != null){
      readOnly = true;
    }
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final colorTheme = AppTheme.of(context).colorTheme;
    return Focus(
      child: Form(
        autovalidateMode: AutovalidateMode.onUserInteraction,
        child: TextFormField(
          maxLines: null,
          style: readOnly ?  TextStyle(
            color: colorTheme.greyText
          ) : null,
          readOnly: readOnly,
          maxLength: widget.length,
          validator: widget.validator,
          controller: widget.controller,
          inputFormatters: [widget.inputFormatters],
          cursorColor: colorTheme.greyText,
          keyboardType: widget.keyboardType,
          decoration: InputDecoration(
              suffixIconConstraints:
              const BoxConstraints(minHeight: 20, minWidth: 20),
              suffixIcon: focus && !readOnly
                  ? InkWell(
                onTap: widget.function,
                child: Box(
                  child: icon,
                ),
              )
                  : null,
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