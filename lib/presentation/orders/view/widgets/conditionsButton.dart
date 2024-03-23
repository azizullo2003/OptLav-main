import 'package:assorted_layout_widgets/assorted_layout_widgets.dart';
import 'package:flutter/material.dart';

import '../../../../app/theme/bloc/app_theme.dart';

class ConditionsButton extends StatelessWidget{

  final VoidCallback onConditions;

  const ConditionsButton({Key? key, required this.onConditions}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final colorTheme = AppTheme.of(context).colorTheme;
    return Box(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: onConditions,
        style: ElevatedButton.styleFrom(
            elevation: 0, backgroundColor: colorTheme.orange,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            padding: const EdgeInsets.symmetric(vertical: 16),
            textStyle:
            const TextStyle(fontSize: 13, fontWeight: FontWeight.w400)),
        child: const Text("Выбрать условия"),
      ),
    );
  }

}