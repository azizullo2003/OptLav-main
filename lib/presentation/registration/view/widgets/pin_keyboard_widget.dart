import 'package:assorted_layout_widgets/assorted_layout_widgets.dart';
import 'package:flutter/material.dart';

import '../../../../app/theme/bloc/app_theme.dart';
import '../../../../generated/assets.gen.dart';

class NumPad extends StatelessWidget {
  final double buttonSize;
  final Color buttonColor;
  final Color iconColor;
  final TextEditingController controller;
  final Function delete;
  final Function onSubmit;

  const NumPad({
    Key? key,
    this.buttonSize = 70,
    this.buttonColor = Colors.indigo,
    this.iconColor = Colors.amber,
    required this.delete,
    required this.onSubmit,
    required this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 30, right: 30),
      child: Column(
        children: [
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              NumberButton(
                number: 1,
                size: buttonSize,
                color: buttonColor,
                controller: controller,
              ),
              NumberButton(
                number: 2,
                size: buttonSize,
                color: buttonColor,
                controller: controller,
              ),
              NumberButton(
                number: 3,
                size: buttonSize,
                color: buttonColor,
                controller: controller,
              ),
            ],
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              NumberButton(
                number: 4,
                size: buttonSize,
                color: buttonColor,
                controller: controller,
              ),
              NumberButton(
                number: 5,
                size: buttonSize,
                color: buttonColor,
                controller: controller,
              ),
              NumberButton(
                number: 6,
                size: buttonSize,
                color: buttonColor,
                controller: controller,
              ),
            ],
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              NumberButton(
                number: 7,
                size: buttonSize,
                color: buttonColor,
                controller: controller,
              ),
              NumberButton(
                number: 8,
                size: buttonSize,
                color: buttonColor,
                controller: controller,
              ),
              NumberButton(
                number: 9,
                size: buttonSize,
                color: buttonColor,
                controller: controller,
              ),
            ],
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              // this button is used to delete the last number
              IconNumButton(
                size: buttonSize,
                color: buttonColor,
                icon: Assets.images.startReg.fingerprint,
              ),
              // IconButton(
              //   onPressed: () => delete(),
              //   icon: Icon(
              //     Icons.backspace,
              //     color: iconColor,
              //   ),
              //   iconSize: buttonSize,
              // ),
              NumberButton(
                number: 0,
                size: buttonSize,
                color: buttonColor,
                controller: controller,
              ),
              // this button is used to submit the entered value
              GestureDetector(
                onTap: () => delete(),
                child: AbsorbPointer(
                  child: IconNumButton(
                      size: buttonSize,
                      color: buttonColor,
                      icon: Assets.images.startReg.removeNum
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class NumberButton extends StatelessWidget {
  final int? number;
  final SvgGenImage? icon;
  final double size;
  final Color color;
  final TextEditingController controller;

   const NumberButton({
    Key? key,
    this.number,
    required this.size,
    required this.color,
    required this.controller,
    this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final colorTheme = AppTheme.of(context).colorTheme;
    return SizedBox(
        width: size,
        height: size,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            elevation: 0, backgroundColor: colorTheme.greyFotNum,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(size / 2),
            ),
          ),
          onPressed: () {
            controller.text += number.toString();
          },
          child: Center(
            child: Text(
                    number.toString(),
                    style: TextStyle(
                        fontWeight: FontWeight.w300,
                        color: colorTheme.blackText,
                        fontSize: 32),
                  ),
          ),
        ));
  }
}

class IconNumButton extends StatelessWidget{

  final SvgGenImage icon;
  final double size;
  final Color color;

  const IconNumButton({
    Key? key,
    required this.size,
    required this.color,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final colorTheme = AppTheme.of(context).colorTheme;
    return SizedBox(
        width: size,
        height: size,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            elevation: 0, backgroundColor: colorTheme.greyFotNum,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(size / 2),
            ),
          ),
          onPressed: () {

          },
          child: Center(
            child:
              Box(
              child: icon.svg(fit: BoxFit.cover),
            )
          ),
        ));
  }

}
