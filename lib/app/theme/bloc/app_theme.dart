import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../models/app_color_theme.dart';
import '../models/app_text_theme.dart';
import 'app_theme_bloc.dart';

part 'app_theme.freezed.dart';

@freezed
class AppTheme with _$AppTheme {
  factory AppTheme({
    required AppColorTheme colorTheme,
    required AppTextTheme textTheme,
  }) = _AppTheme;

  AppTheme._();

  static AppTheme of(BuildContext context) {
    return BlocProvider.of<AppThemeBloc>(context).state;
  }
}