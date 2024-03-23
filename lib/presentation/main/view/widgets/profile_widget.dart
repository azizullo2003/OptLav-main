import 'package:assorted_layout_widgets/assorted_layout_widgets.dart';
import 'package:flutter/material.dart';

import '../../../../app/theme/bloc/app_theme.dart';
import '../../../../generated/assets.gen.dart';

class ProfileWidget extends StatelessWidget{
  const ProfileWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final colorTheme = AppTheme.of(context).colorTheme;
    return Padding(
      padding: const EdgeInsets.only(top: 16),
      child: Container(

        padding: const EdgeInsets.all(16),
        decoration: decorationOfBoxes(),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Box(
              padding: const Pad(right: 8),
              child: Assets.images.home.profileIcon
                  .svg(fit: BoxFit.cover),
            ),
            Column(
              children: [
                Box(
                    width: 191,
                    height: 48,
                    child: Text(
                      "Данные вашего профиля",
                      style: TextStyle(
                          color: colorTheme.blackText,
                          fontSize: 17,
                          fontFamily: "",
                          fontWeight: FontWeight.bold),
                    )
                ),
                Box(
                    width: 191,
                    child: Text(
                      "Заполните свои данные для дальнейшей работы",
                      style: TextStyle(
                          color: colorTheme.greyText,
                          fontSize: 13,
                          fontFamily: "",
                          fontWeight: FontWeight.normal),
                    )),
              ],
            ),
            const Spacer(),
            Box(
              child: Assets.images.about.arrow.svg(fit: BoxFit.cover),
            ),
          ],
        ),
      ),
    );
  }

  BoxDecoration decorationOfBoxes() {
    return BoxDecoration(
      color: Colors.white,
      borderRadius: const BorderRadius.all(Radius.circular(12)),
      boxShadow: [
        BoxShadow(
          color: const Color(0xFF000000).withOpacity(0.04),
          spreadRadius: 2,
          blurRadius: 12,
          offset: const Offset(0, 2), // changes position of shadow
        ),
      ],
    );
  }

}