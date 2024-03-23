import 'package:assorted_layout_widgets/assorted_layout_widgets.dart';
import 'package:flutter/material.dart';

import '../../../../app/theme/bloc/app_theme.dart';
import '../../../../generated/assets.gen.dart';

class AboutUsWidget extends StatelessWidget {
  const AboutUsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final colorTheme = AppTheme.of(context).colorTheme;
    return Container(
        padding: const EdgeInsets.only(top: 1, bottom: 16, left: 1, right: 1),
        decoration: decorationOfBox(context),
        child: Container(
          padding:
              const EdgeInsets.only(top: 16, bottom: 16, left: 12, right: 12),
          decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(16)),),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Box(
                child: Assets.images.about.info.svg(fit: BoxFit.cover),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Box(
                    padding: const Pad(left: 12),
                    child: Text(
                      "О нас",
                      style: TextStyle(
                          color: colorTheme.blackText,
                          fontSize: 17,
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                  Box(
                    padding: const Pad(left: 12, top: 8),
                    width: 200,
                    child: Text(
                      "Подробная информация о нашем проекте",
                      style: TextStyle(
                          height: 1.5,
                          color: colorTheme.greyBarBottomText,
                          fontSize: 13,
                          fontWeight: FontWeight.w400),
                    ),
                  )
                ],
              ),
              const Spacer(),
              Box(
                child: Assets.images.about.arrow.svg(fit: BoxFit.cover),
              ),
            ],
          ),
        ));
  }

  BoxDecoration decorationOfBox(BuildContext context) {
    final colorTheme = AppTheme.of(context).colorTheme;
    return BoxDecoration(
        color: Colors.transparent,
        borderRadius: const BorderRadius.all(Radius.circular(12)),
        border: Border.all(color: colorTheme.borderGrayForOrder));
  }
}
