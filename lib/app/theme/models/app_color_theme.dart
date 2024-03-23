import 'dart:ui';
import 'package:flutter/foundation.dart';

import 'app_pallete.dart';

@immutable
abstract class AppColorTheme {
  Brightness get brightness;

  Color get background;
  Color get backgroundVariant;
  Color get backgroundVariant2;
  Color get border;
  Color get card;
  Color get checkbox;
  Color get disabled;
  Color get error;
  Color get errorBorder;
  Color get hint;
  Color get icon;
  Color get onBackground;
  Color get onDisabled;
  Color get onError;
  Color get onErrorVariant;
  Color get onPrimary;
  Color get primary;
  Color get blueSochi;
  Color get greyText;
  Color get blackText;
  Color get borderGray;
  Color get greyFotNum;
  Color get appBarGreen;
  Color get appBarGreyText;
  Color get greyBarBottomText;
  Color get greenBarBottomText;
  Color get paris;
  Color get parisText;
  Color get lightGreen;
  Color get greenText;
  Color get lightRed;
  Color get redText;
  Color get orange;
  Color get borderGrayForOrder;
  Color get dividerGray;
  Color get lightOrange;
}

class LightColorTheme implements AppColorTheme {
  @override
  Brightness get brightness => Brightness.light;

  @override
  Color get background => AppPallete.white;
  @override
  Color get backgroundVariant => AppPallete.subWhite;
  @override
  Color get backgroundVariant2 => AppPallete.gray;
  @override
  Color get border => AppPallete.snuff;
  @override
  Color get card => AppPallete.lightGray;
  @override
  Color get checkbox => AppPallete.darkGray;
  @override
  Color get disabled => AppPallete.gray;
  @override
  Color get error => AppPallete.linen;
  @override
  Color get errorBorder => AppPallete.ebony;
  @override
  Color get hint => AppPallete.dolphin;
  @override
  Color get icon => AppPallete.snuffVariant;
  @override
  Color get onBackground => AppPallete.mirage;
  @override
  Color get onDisabled => AppPallete.white;
  @override
  Color get onError => AppPallete.ebony;
  @override
  Color get onErrorVariant => AppPallete.ebony;
  @override
  Color get onPrimary => AppPallete.white;
  @override
  Color get primary => AppPallete.primaryGreen;

  @override
  Color get blueSochi => AppPallete.blueSochi;

  @override
  Color get greyText => AppPallete.grayText;

  @override
  Color get blackText => AppPallete.blackText;

  @override
  Color get borderGray => AppPallete.borderGray;

  @override
  Color get greyFotNum => AppPallete.grayNumButton;

  @override
  Color get appBarGreen => AppPallete.appBarGreen;

  @override
  Color get appBarGreyText => AppPallete.grayAppBarText;

  @override
  Color get greyBarBottomText => AppPallete.grayBottomBarText;

  @override
  Color get greenBarBottomText => AppPallete.greenBottomBarText;

  @override
  Color get paris => AppPallete.paris;

  @override
  Color get parisText => AppPallete.parisText;

  @override
  Color get lightGreen => AppPallete.lightGreen;

  @override
  Color get greenText => AppPallete.greenText;

  @override
  Color get lightRed => AppPallete.lightRed;

  @override
  Color get redText => AppPallete.redText;

  @override

  Color get orange => AppPallete.orange;

  @override
  Color get borderGrayForOrder => AppPallete.borderGrayForOrder;

  @override

  Color get dividerGray => AppPallete.dividerGray;

  @override
  Color get lightOrange => AppPallete.lightOrange;
}
