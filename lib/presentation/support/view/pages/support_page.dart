import 'package:assorted_layout_widgets/assorted_layout_widgets.dart';
import 'package:auto_route/auto_route.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:optlove/presentation/support/view/bloc/support_bloc.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../app/routes/router.gr.dart';
import '../../../../app/theme/bloc/app_theme.dart';
import '../../../../app/utils/string_utils.dart';
import '../../../../generated/assets.gen.dart';
import '../../../profile/view/bloc/user_bloc.dart';
import '../../../profile/view/widgets/profile_text_field.dart';
import '../../../registration/data/models/user_info.dart';
import '../../../sendactivity/bloc/sendactivity_bloc.dart';

class SupportPage extends StatefulWidget {
  const SupportPage({super.key});

  @override
  State<SupportPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SupportPage> {
  final phoneMask = MaskTextInputFormatter(
      mask: '+7 (###) ###-##-##',
      filter: {"#": RegExp(r'[0-9]')},
      type: MaskAutoCompletionType.lazy);
  var emailMask = MaskTextInputFormatter(filter: {
    "#": RegExp(r'^[\+]?[(]?[0-9]{3}[)]?[-\s\.]?[0-9]{3}[-\s\.]?[0-9]{4,6}$')
  }, type: MaskAutoCompletionType.lazy);
  final singleFormat = FilteringTextInputFormatter.singleLineFormatter;
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController textController = TextEditingController();
  var isCorrectFields = false;

  @override
  void initState() {
    BlocProvider.of<UserBloc>(context).add(const UserEvent.getUserData());
    BlocProvider.of<SendActivityBloc>(context).add(
        const SendActivityEvent.sendActivity(screenName: "Экран поддержки"));
    // phoneController.addListener(() {
    //   setState(() {
    //     checkFields();
    //   });
    // });

    emailController.addListener(() {
      // setState(() {
      //   checkFields();
      // });
    });

    textController.addListener(() {
      setState(() {
        checkFields();
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final colorTheme = AppTheme.of(context).colorTheme;
    return BlocListener<SupportBloc, SupportState>(
      listener: (context, state) {
        state.maybeMap(
            loading: (_) => {
                  Container(
                      child: const Center(child: CircularProgressIndicator()))
                },
            messageSent: (response) => {
                  if (response.response.result)
                    {context.router.push(const SupportRequestSent())}
                },
            orElse: () => {});
      },
      child: Scaffold(
          body: SingleChildScrollView(
        child: BlocBuilder<UserBloc, UserState>(
          builder: (context, state) => state.maybeMap(orElse: () {
            return const SizedBox();
          }, loading: (_) {
            return Container(
                child: const Center(child: CircularProgressIndicator()));
          }, loaded: (response) {
            fillFieldsFromResponse(response.response.user_info);
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 16),
                      GestureDetector(
                        onTap: () => context.router.push(
                          const MainRoute(),
                        ),
                        child: Box(
                          child: Assets.images.back.svg(fit: BoxFit.cover),
                        ),
                      ),
                      const SizedBox(height: 12),
                      Text(
                        "Служба поддержки",
                        style: TextStyle(
                            fontSize: 32,
                            fontWeight: FontWeight.w700,
                            color: colorTheme.blackText),
                      ),
                      const SizedBox(height: 12),
                      Text(
                        "Ваши контактные данные",
                        style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w700,
                            color: colorTheme.blackText),
                      ),
                      const SizedBox(height: 20),
                      ProfileTextField(
                          labelText: "Электронная почта",
                          keyboardType: TextInputType.emailAddress,
                          inputFormatters: emailMask,
                          controller: emailController,
                          validator: (value) => EmailValidator.validate(value!)
                              ? null
                              : "Введите корректный email",
                          function: () => emailController.clear()),
                      const SizedBox(height: 30),
                      ProfileTextField(
                          labelText: "Текст обращения",
                          keyboardType: TextInputType.text,
                          inputFormatters: singleFormat,
                          controller: textController,
                          function: () => textController.clear()),
                      const SizedBox(height: 30),
                      Box(
                        width: double.infinity,
                        padding: const Pad(horizontal: 16, top: 40),
                        child: ElevatedButton(
                          onPressed: isCorrectFields
                              ? () => _onSendMessage(context,
                                  emailController.text, textController.text)
                              : null,
                          style: ElevatedButton.styleFrom(
                              elevation: 0,
                              backgroundColor: isCorrectFields
                                  ? const Color(0xFF5DB248)
                                  : const Color(0xFFAAABAD),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(16),
                              ),
                              padding: const EdgeInsets.symmetric(vertical: 16),
                              textStyle: const TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.bold)),
                          child: const Text('Отправить'),
                        ),
                      ),
                      Center(
                        child: Box(
                            padding: const Pad(horizontal: 16, top: 25),
                            alignment: Alignment.center,
                            width: 300,
                            child: GestureDetector(
                              onTap: _launchUrlConf,
                              child: RichText(
                                textAlign: TextAlign.center,
                                text: TextSpan(
                                  text:
                                      "Отправляя свои данные, вы соглашаетесь ",
                                  style: TextStyle(
                                      color: colorTheme.greyText, fontSize: 10),
                                  children: <TextSpan>[
                                    TextSpan(
                                        text: "\nс политикой конфедициальности",
                                        style: TextStyle(
                                            height: 1.5,
                                            color: colorTheme.blueSochi,
                                            decoration:
                                                TextDecoration.underline)),
                                  ],
                                ),
                              ),
                            )),
                      ),
                    ],
                  ),
                ),
                //ButtonColourful(text: "Сохранить", color :colorTheme.primary),
              ],
            );
          }),
        ),
      )),
    );
  }

  Future<void> _launchUrlConf() async {
    final Uri url = Uri.parse("https://panel.optlav.ru/sogla.html");
    if (!await launchUrl(url, mode: LaunchMode.inAppWebView)) {
      throw 'Could not launch $url';
    }
  }

  void _onSendMessage(BuildContext context, String email, String message) {
    phoneController.clear();
    emailController.clear();
    textController.clear();
    BlocProvider.of<SupportBloc>(context)
        .add(SupportEvent.sendMessage(email, message));
  }

  void checkFields() {
    if (phoneController.text.length == 18 &&
        EmailValidator.validate(emailController.text) &&
        textController.text.length > 5) {
      isCorrectFields = true;
    } else {
      isCorrectFields = false;
    }
  }

  void fillFieldsFromResponse(UserInfo user) {
    phoneController.text = StringUtils.maskForPhone(user.phone);
    emailController.text = user.email ?? "";
  }
}
