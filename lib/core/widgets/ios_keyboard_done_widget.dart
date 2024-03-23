import 'package:flutter/cupertino.dart';

import '../../app/theme/bloc/app_theme.dart';

class IosKeyboardDoneWidget extends StatelessWidget {
  final double _heightInputDoneView = 46;

  const IosKeyboardDoneWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final colorTheme = AppTheme.of(context).colorTheme;

    return Container(
      width: double.infinity,
      height: _heightInputDoneView,
      decoration: const BoxDecoration(
        color: Color.fromRGBO(242, 243, 245, 1),
        border: Border(
          top: BorderSide(width: 1, color: Color.fromRGBO(205, 205, 205, 1)),
        ),
      ),
      child: Align(
        alignment: Alignment.topRight,
        child: Padding(
          padding: const EdgeInsets.only(top: 3.0, bottom: 4.0),
          child: CupertinoButton(
            padding: const EdgeInsets.only(right: 24.0, top: 8.0, bottom: 8.0),
            onPressed: () {
              FocusScope.of(context).requestFocus(FocusNode());
            },
            child: Text(
                "Готово",
                style: TextStyle(color: colorTheme.primary, fontWeight: FontWeight.bold)
            ),
          ),
        ),
      ),
    );
  }
}