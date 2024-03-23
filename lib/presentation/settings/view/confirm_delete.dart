import 'package:assorted_layout_widgets/assorted_layout_widgets.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:optlove/app/routes/router.gr.dart';
import 'package:optlove/presentation/profile/view/bloc/user_bloc.dart';

import '../../../app/theme/bloc/app_theme.dart';
import '../../../app/utils/shared_preferences_helper.dart';
import '../../../core/widgets/button.dart';
import '../../../generated/assets.gen.dart';
import '../../sendactivity/bloc/sendactivity_bloc.dart';

class ConfirmDeleteUserPage extends StatelessWidget {
  const ConfirmDeleteUserPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    BlocProvider.of<SendActivityBloc>(context).add(
        const SendActivityEvent.sendActivity(
            screenName: "Экран подтверждения удаления"));
    final colorTheme = AppTheme.of(context).colorTheme;
    return BlocListener<UserBloc, UserState>(
      listener: (context, state) {
        state.maybeMap(
            userDeleted: (response) => {
                  if (response.response.result)
                    {
             SharedPrefsHelper.setAddressExist(false),
                      context.router.replace(
                        UserDeletedRoute(),
                      )
                    }
                },
            orElse: () => {});
      },
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 16),
                GestureDetector(
                  child: Box(
                    child: Assets.images.back.svg(fit: BoxFit.cover),
                  ),
                ),
                const SizedBox(height: 12),
                Text(
                  "Удаление аккаунта",
                  style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.w700,
                      color: colorTheme.blackText),
                ),
                const SizedBox(height: 18),
                Text(
                  "!После подтверждения все ваши данные будут удалены из приложения",
                  style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w500,
                      color: colorTheme.redText),
                ),
                const SizedBox(height: 100),
                Text(
                  "Вы уверены?",
                  style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.w700,
                      color: colorTheme.blackText),
                ),
                const SizedBox(height: 160),
                ButtonColourful(
                  text: "ДА, удалить акккаунт",
                  color: colorTheme.redText,
                  function: () => _deleteUser(context),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _deleteUser(BuildContext context) {
    BlocProvider.of<UserBloc>(context).add(const UserEvent.deleteUser());
  }
}
