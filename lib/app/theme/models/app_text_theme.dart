import 'package:flutter/foundation.dart';
import 'package:flutter/painting.dart';

@immutable
abstract class AppTextTheme {
  String get fontFamily;

  TextStyle get body1Regular;
  TextStyle get button;
  TextStyle get caption;
  TextStyle get headline0;
  TextStyle get headline1;
  TextStyle get headline2;
  TextStyle get headline3;
  TextStyle get label;
  TextStyle get placemark;
  TextStyle get subtitle;
  TextStyle get title;
}

class DefaultTextTheme implements AppTextTheme {
  @override
  String get fontFamily => 'Source Sans Pro';

  @override
  TextStyle get body1Regular =>
      const TextStyle(
          fontSize: 16,
          overflow:
          TextOverflow.ellipsis);

  @override
  TextStyle get button => const TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w500,
    height: 10 / 9,
    overflow: TextOverflow.ellipsis,
  );

  @override
  TextStyle get caption => const TextStyle(
    fontSize: 12,
    height: 1.5,
    overflow: TextOverflow.ellipsis,
  );

  @override
  TextStyle get headline0 => const TextStyle(
    fontFamily: 'Bebas Neue',
    fontSize: 72,
    overflow: TextOverflow.ellipsis,
  );

  @override
  TextStyle get headline1 => const TextStyle(
    fontSize: 32,
    fontWeight: FontWeight.bold,
    height: 1.25,
    overflow: TextOverflow.ellipsis,
  );

  @override
  TextStyle get headline2 => const TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.w600,
    height: 4 / 3,
    overflow: TextOverflow.ellipsis,
  );

  @override
  TextStyle get headline3 => const TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w600,
    height: 4 / 3,
    overflow: TextOverflow.ellipsis,
  );

  @override
  TextStyle get placemark => const TextStyle(
    fontSize: 15,
    fontWeight: FontWeight.w600,
    letterSpacing: -0.17,
    overflow: TextOverflow.ellipsis,
  );

  @override
  TextStyle get label => const TextStyle(
    fontSize: 14,
    height: 8 / 7,
    overflow: TextOverflow.ellipsis,
  );

  @override
  TextStyle get subtitle =>
      const TextStyle(fontSize: 18, overflow: TextOverflow.ellipsis);

  @override
  TextStyle get title => const TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w600,
    height: 9 / 8,
    overflow: TextOverflow.ellipsis,
  );
}
