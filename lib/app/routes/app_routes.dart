import 'package:flutter/material.dart';
import 'package:optlove/presentation/main/view/pages/main_page.dart';
import 'package:optlove/presentation/registration/view/pages/enter_page.dart';
import 'package:optlove/presentation/registration/view/pages/enter_pin.dart';
import 'package:optlove/presentation/registration/view/pages/forgot_password_page.dart';
import 'package:optlove/presentation/registration/view/pages/registration.dart';
import 'package:optlove/presentation/splash/view/pages/splash_screen.dart';

class AppRoutes {
  static Route? onGenerateRoutes(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return _materialRoute(const SplashScreen());

      case '/Registration':
        return _materialRoute(const RegistrationPage());

      case '/RestorePassword':
        return _materialRoute(const ForgotPasswordPage());

      case '/EnterPinCode':
        return _materialRoute(EnterPinCodePage(
          phone: settings.arguments as String,
        ));

      case '/EnterPage':
        return _materialRoute(const EnterPage());

      case '/MainPage':
        return _materialRoute(const MainPage());

      default:
        return null;
    }
  }

  static Route<dynamic> _materialRoute(Widget view) {
    return MaterialPageRoute(builder: (_) => view);
  }
}
