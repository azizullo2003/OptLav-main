import 'package:assorted_layout_widgets/assorted_layout_widgets.dart';
import 'package:flutter/material.dart';

class SendButton extends StatelessWidget {
  final Color color;
  final VoidCallback? onCartSend;

  const SendButton({Key? key, required this.color, this.onCartSend})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Box(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: onCartSend,
        style: ElevatedButton.styleFrom(
            elevation: 0,
            backgroundColor: color,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            padding: const EdgeInsets.symmetric(vertical: 16),
            textStyle:
                const TextStyle(fontSize: 13, fontWeight: FontWeight.w400)),
        child: const Text("Отправить"),
      ),
    );
  }
}
