import 'package:assorted_layout_widgets/assorted_layout_widgets.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:optlove/app/routes/router.gr.dart';
import 'package:optlove/app/theme/models/app_color_theme.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../app/theme/bloc/app_theme.dart';
import '../../../../generated/assets.gen.dart';

class RegistrationBegin extends StatelessWidget {
  const RegistrationBegin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    getUserId();
    final colorTheme = AppTheme.of(context).colorTheme;
    return Scaffold(
      appBar: _buildAppBar(colorTheme),
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(left: 16, right: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () => _onEnter(context),
              child: Container(
                padding: const EdgeInsets.all(16),
                decoration: decorationOfBoxes(),
                child: Row(
                  children: [
                    Box(
                      padding: const Pad(right: 8),
                      child: Assets.images.startReg.enter.svg(fit: BoxFit.cover),
                    ),
                     Text(
                      "Вход",
                      style: TextStyle(
                        color: colorTheme.blackText,
                          fontSize: 17,
                          fontFamily: "",
                          fontWeight: FontWeight.bold),
                    ),
                    const Spacer(),
                    Box(
                      child: Assets.images.startReg.enterArrow
                          .svg(fit: BoxFit.cover),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 16),
              child: GestureDetector(
                onTap: () => _launchUrl(),
                child: Container(
                  padding: const EdgeInsets.all(16),
                  decoration: decorationOfBoxes(),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Box(
                        padding: const Pad(right: 8),
                        child: Assets.images.startReg.salesman
                            .svg(fit: BoxFit.cover),
                      ),
                      Column(
                        children: [
                          Box(
                              width: 191,
                              height: 48,
                              child: RichText(
                                text:  TextSpan(
                                  text: "Зарегистрироваться как ",
                                  style:  TextStyle(
                                      color: colorTheme.blackText,
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold),
                                  children: <TextSpan>[
                                    TextSpan(
                                        text: "продавец",
                                        style: TextStyle(color: colorTheme.blueSochi)),
                                  ],
                                ),
                              )),
                           Box(
                              width: 191,
                              child: Text(
                                "Первый шаг к увеличению продаж",
                                style: TextStyle(
                                    color: colorTheme.greyText,
                                    fontSize: 13,
                                    fontFamily: "",
                                    fontWeight: FontWeight.normal),
                              )),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 16),
              child: GestureDetector(
                onTap: () => _onRegistration(context),
                child: Container(
                  padding: const EdgeInsets.all(16),
                  decoration: decorationOfBoxes(),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Box(
                        padding: const Pad(right: 8),
                        child: Assets.images.startReg.customer
                            .svg(fit: BoxFit.cover),
                      ),
                      Column(
                        children: [
                          Box(
                              width: 191,
                              height: 48,
                              child: RichText(
                                text:  TextSpan(
                                  text: "Зарегистрироваться как ",
                                  style: TextStyle(
                                      color: colorTheme.blackText,
                                      fontSize: 17,
                                      fontFamily: "",
                                      fontWeight: FontWeight.bold),
                                  children: <TextSpan>[
                                    TextSpan(
                                        text: "покупатель",
                                        style: TextStyle(color: colorTheme.primary)),
                                  ],
                                ),
                              )),
                           Box(
                              width: 191,
                              child: Text(
                                "Экономия времени и денег при закупке товара",
                                style: TextStyle(
                                    color: colorTheme.greyText,
                                    fontSize: 13,
                                    fontFamily: "",
                                    fontWeight: FontWeight.normal),
                              )),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

void _onRegistration(BuildContext context) {
  context.router.push(
    const RegistrationRoute(),
  );
}

void _onEnter(BuildContext context) {
  context.router.push(
    const EnterRoute(),
  );
}

Future<void> _launchUrl() async {
  final Uri url = Uri.parse("https://panel.optlav.ru/index.php?action=auth&code=register");
  if (!await launchUrl(url, mode: LaunchMode.platformDefault)) {
    throw 'Could not launch $url';
  }
}

void getUserId() async{
  SharedPreferences prefs = await SharedPreferences.getInstance();
  final String? action = prefs.getString('userId');
  if (action != null){
    print("USERID $action");
  }
}



PreferredSizeWidget _buildAppBar(
     AppColorTheme colorTheme
    ) {
  return AppBar(
    centerTitle: true,
    backgroundColor: Colors.white,
    shadowColor: Colors.white,
    elevation: 0,
    title:
        Column(
          children: [
            const Text('Начало регистрации', style: TextStyle(color: Colors.black)),
            const SizedBox(
               height: 3,
             ),
             Text('Вы будете покупать или продавать?', style: TextStyle(
                color: colorTheme.greyText,
                fontSize: 13,
                fontFamily: "",
                fontWeight: FontWeight.normal)),
          ],
        ),
  );
}

BoxDecoration decorationOfBoxes() {
  return BoxDecoration(
    color: Colors.white,
    borderRadius: const BorderRadius.all(Radius.circular(12)),
    boxShadow: [
      BoxShadow(
        color: const Color(0xFF000000).withOpacity(0.04),
        spreadRadius: 2,
        blurRadius: 12,
        offset: const Offset(0, 2), // changes position of shadow
      ),
    ],
  );
}
