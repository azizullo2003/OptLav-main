import 'package:assorted_layout_widgets/assorted_layout_widgets.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../../../app/theme/bloc/app_theme.dart';
import '../../../../generated/assets.gen.dart';
import '../../data/models/block_model.dart';

class AboutInfoPage extends StatelessWidget{

  final BlockModel block;

  const AboutInfoPage({Key? key, required this.block}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final colorTheme = AppTheme.of(context).colorTheme;
    return Container(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InkWell(
            onTap: () =>
                context.router.navigateBack(),
            child: Box(
              child: Assets.images.back.svg(fit: BoxFit.cover),
            ),
          ),
          const SizedBox(height: 12),
          Text(
            block.header,
            style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.w700,
                color: colorTheme.blackText),
          ),
          const SizedBox(height: 36),
          Text(
            block.text,
            style: TextStyle(
              height: 2,
                fontSize: 17,
                fontWeight: FontWeight.w400,
                color: colorTheme.blackText),
          ),
        ],
      ),
    );
  }

}