import 'package:assorted_layout_widgets/assorted_layout_widgets.dart';
import 'package:flutter/material.dart';

class ButtonColourful extends StatelessWidget{
  final String text;
  final Color color;
  final VoidCallback? function;

  const ButtonColourful({Key? key, required this.text, required this.color, this.function}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Box(
      width: double.infinity,
      padding: const Pad(horizontal: 16),
      child: ElevatedButton(
        onPressed: function,
        style: ElevatedButton.styleFrom(
            elevation: 0, backgroundColor: color,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            padding: const EdgeInsets.symmetric(vertical: 16),
            textStyle: const TextStyle(
                fontSize: 17, fontWeight: FontWeight.bold)),
        child:  Text(text),
      ),
    );
  }

}