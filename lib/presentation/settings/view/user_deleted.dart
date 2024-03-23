import 'dart:async';

import 'package:assorted_layout_widgets/assorted_layout_widgets.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:optlove/app/routes/router.gr.dart';

import '../../../app/theme/bloc/app_theme.dart';
import '../../../app/utils/shared_preferences_helper.dart';
import '../../../generated/assets.gen.dart';

class UserDeletedPage extends StatelessWidget{

  UserDeletedPage({Key? key}) : super(key: key);

  late Timer _timer;

  @override
  Widget build(BuildContext context) {
    startTimer(context);
    final colorTheme = AppTheme.of(context).colorTheme;
    return Scaffold(
      body: Container(
        height: double.infinity,
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 96),
            Text(
              "Ваш аккаунт удалён",
              style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.w700,
                  color: colorTheme.blackText),
            ),
            const SizedBox(height: 135,),
            Center(
              child: Box(
                child: Assets.images.confirm.svg(fit: BoxFit.cover),
              ),
            )
          ],
        ),
      ),
    );
  }

  void startTimer(BuildContext context) {
    const oneSec = Duration(seconds: 1);
    _timer = Timer.periodic(
      oneSec,
          (Timer timer) async {
        if(timer.tick == 1){
          await SharedPrefsHelper.rememberMe(false);
          _timer.cancel();
          context.router.replace(
            const RegistrationBegin(),
          );
        }
      },
    );

  }

}