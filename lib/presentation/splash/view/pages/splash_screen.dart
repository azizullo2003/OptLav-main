import 'dart:async';

import 'package:assorted_layout_widgets/assorted_layout_widgets.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:optlove/app/routes/router.gr.dart';
import 'package:optlove/core/static_text.dart';

import '../../../../app/utils/shared_preferences_helper.dart';
import '../../../../generated/assets.gen.dart';
import '../bloc/static_bloc.dart';

class SplashScreen extends StatefulWidget {
  static final imageAssets = [
    Assets.images.mainLogo,
  ];

  static final dotsLoading = [
    Assets.images.firstDots,
    Assets.images.secondDots,
    Assets.images.thirdDots,
    Assets.images.fourthDots,
    Assets.images.fithDots,
  ];

  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  late Timer timer;
  int _seconds = 1;
  late final PageController controller;
  int imgnumber = 0;

  @override
  void initState() {
    BlocProvider.of<StaticBloc>(context).add(const StaticEvent.getStatic());
    inc();
    startTimer();
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<StaticBloc, StaticState>(
      listener: (context, state) {
        state.maybeMap(
            orElse: () => {},
            loaded: (response) {
              if (response.response.result) {
                StaticText.first = response.response.data.address_empty;
              }
            });
      },
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Box(
                child: SplashScreen.imageAssets[0].svg(fit: BoxFit.cover),
              ),
              Box(
                padding: const Pad(top: 24),
                child:
                    SplashScreen.dotsLoading[imgnumber].svg(fit: BoxFit.cover),
              )
            ],
          ),
        ),
      ),
    );
  }

  void inc() async {
    while (imgnumber < SplashScreen.dotsLoading.length) {
      await Future.delayed(const Duration(milliseconds: 120));
      setState(() {
        if (imgnumber == SplashScreen.dotsLoading.length - 1) {
          imgnumber = 0;
          return;
        }
        imgnumber++;
      });
    }
  }

  void startTimer() async {
    bool isOBDone = await SharedPrefsHelper.isOBDone() ?? false;
    const oneSec = Duration(seconds: 1);
    timer = Timer.periodic(
      oneSec,
      (Timer timer) {
        if (_seconds == 0) {
          timer.cancel();
          if (isOBDone) {
            _onRegistrationBegin(context);
          } else {
            context.router.push(const OnboardingRoute());
          }
        } else {
          setState(() {
            _seconds--;
          });
        }
      },
    );
  }

  void _onRegistrationBegin(BuildContext context) async {
    bool? isRememberMe = await SharedPrefsHelper.isRememberMe();
    if (isRememberMe != null) {
      if (isRememberMe) {
        context.router.push(
          const MainRoute(),
        );
      } else {
        context.router.push(
          const RegistrationBegin(),
        );
      }
    } else {
      context.router.push(
        const RegistrationBegin(),
      );
    }
  }
}
