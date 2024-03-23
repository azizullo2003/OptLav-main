import 'package:assorted_layout_widgets/assorted_layout_widgets.dart';
import 'package:flutter/widgets.dart';

import '../../../../app/theme/bloc/app_theme.dart';
import '../../../../generated/assets.gen.dart';

class AboutItem extends StatelessWidget{

  final String title;
  final VoidCallback onPage;

  const AboutItem({Key? key, required this.title, required this.onPage}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final colorTheme = AppTheme.of(context).colorTheme;
    return GestureDetector(
      onTap: onPage,
      child: Row(
        children: [
          Text(title,
              style: TextStyle(
                  color: colorTheme.blackText,
                  fontWeight: FontWeight.w400,
                  fontSize: 17)),
          const Spacer(),
          Box(
            child:
            Assets.images.main.smallRightArrow.svg(fit: BoxFit.cover),
          ),
        ],
      ),
    );
  }
}