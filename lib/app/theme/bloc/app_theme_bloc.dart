import 'package:flutter_bloc/flutter_bloc.dart';

import '../models/app_color_theme.dart';
import '../models/app_text_theme.dart';
import 'app_theme.dart';
import 'app_theme_event.dart';

class AppThemeBloc extends Bloc<AppThemeEvent, AppTheme> {
  AppThemeBloc()
      : super(AppTheme(
    colorTheme: LightColorTheme(),
    textTheme: DefaultTextTheme(),
  )) {
    on<AppThemeEventSetLightTheme>((event, emit) {
      emit(state.copyWith(colorTheme: LightColorTheme()));
    });
  }
}