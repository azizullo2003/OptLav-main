import 'package:assorted_layout_widgets/assorted_layout_widgets.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../../../app/routes/router.gr.dart';
import '../../../../app/theme/bloc/app_theme.dart';
import '../../../../generated/assets.gen.dart';

class SupportRequestSent extends StatelessWidget{

  const SupportRequestSent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final colorTheme = AppTheme.of(context).colorTheme;
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 16),
            GestureDetector(
              onTap: () => context.router.navigateBack(),
              child: Box(
                child: Assets.images.back.svg(fit: BoxFit.cover),
              ),
            ),
            const SizedBox(height: 12),
            Text(
              "Спасибо за обращение!",
              style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.w700,
                  color: colorTheme.blackText),
            ),
            const SizedBox(height: 18),
            Text(
              "Ваше сообщение отправлено!",
              style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w600,
                  color: colorTheme.greyText),
            ),
            const SizedBox(height: 32),
            Center(
              child: Box(
                child: Assets.images.support.succes.svg(fit: BoxFit.cover),
              ),
            ),
            const SizedBox(height: 12),
            Box(
              width: double.infinity,
              padding: const Pad(horizontal: 16, top: 40),
              child: ElevatedButton(
                onPressed: () => {
                  context.router.push(
                    const MainRoute(),
                  )
                },
                style: ElevatedButton.styleFrom(
                    elevation: 0, backgroundColor: colorTheme.primary,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    textStyle: const TextStyle(
                        fontSize: 17, fontWeight: FontWeight.bold)),
                child: const Text('На главную'),
              ),
            ),
          ],
        ),
      ),
    );
  }


}