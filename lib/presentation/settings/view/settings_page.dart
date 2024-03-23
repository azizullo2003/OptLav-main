import 'package:assorted_layout_widgets/assorted_layout_widgets.dart';
import 'package:auto_route/auto_route.dart';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:optlove/app/routes/router.gr.dart';

import '../../../app/theme/bloc/app_theme.dart';
import '../../../generated/assets.gen.dart';
import '../../sendactivity/bloc/sendactivity_bloc.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage>{



  final singleFormat = FilteringTextInputFormatter.singleLineFormatter;
   final TextEditingController oldPassword = TextEditingController();
   final TextEditingController newPassword = TextEditingController();
  final TextEditingController confirmNewPassword = TextEditingController();
  var isPassword = true;
  @override
  Widget build(BuildContext context) {
    final colorTheme = AppTheme.of(context).colorTheme;
   return  Scaffold(
     body: SingleChildScrollView(
       child: Column(
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
                   "Настройки",
                   style: TextStyle(
                       fontSize: 32,
                       fontWeight: FontWeight.w700,
                       color: colorTheme.blackText),
                 ),
                 const SizedBox(height: 12),
                 Text(
                   "Изменить параметры входа",
                   style: TextStyle(
                       fontSize: 22,
                       fontWeight: FontWeight.w700,
                       color: colorTheme.blackText),
                 ),
                 // const SizedBox(height: 30),
                 // RegTextField(
                 //     controller: oldPassword,
                 //     labelText: "Введите старый пароль",
                 //     isPassword: isPassword,
                 //     length: 5,
                 //     isEyeIcon: true,
                 //     keyboardType: TextInputType.number,
                 //     inputFormatters: singleFormat,
                 //     function: () => setState((){
                 //       if (isPassword){
                 //         isPassword = false;
                 //       } else {
                 //         isPassword = true;
                 //       }
                 //     })
                 // ),
                 // const SizedBox(height: 20),
                 // RegTextField(
                 //     controller: newPassword,
                 //     labelText: "Придумайте новый пароль",
                 //     isPassword: isPassword,
                 //     length: 5,
                 //     isEyeIcon: true,
                 //     keyboardType: TextInputType.number,
                 //     inputFormatters: singleFormat,
                 //     function: () => setState((){
                 //       if (isPassword){
                 //         isPassword = false;
                 //       } else {
                 //         isPassword = true;
                 //       }
                 //     })
                 // ),
                 // const SizedBox(height: 20),
                 // RegTextField(
                 //     controller: confirmNewPassword,
                 //     labelText: "Подтвердите новый пароль",
                 //     isPassword: isPassword,
                 //     length: 5,
                 //     isEyeIcon: true,
                 //     keyboardType: TextInputType.number,
                 //     inputFormatters: singleFormat,
                 //     function: () => setState((){
                 //       if (isPassword){
                 //         isPassword = false;
                 //       } else {
                 //         isPassword = true;
                 //       }
                 //     })
                 // ),
                 // const SizedBox(height: 15),
               ],
             ),
           ),
           const SizedBox(height: 50,),
           GestureDetector(
             onTap: () => _onProduct(context),
             child: Container(
               height: 64,
               color: colorTheme.lightRed,
               child: Padding(
                 padding: const EdgeInsets.symmetric(horizontal: 16),
                 child: Row(
                   children: [
                     Text(
                       "Удалить аккаунт",
                       style: TextStyle(
                           fontSize: 17,
                           fontWeight: FontWeight.w400,
                           color: colorTheme.redText),
                     ),
                     const Spacer(),
                     Box(
                       child:
                       Assets.images.main.smallRedArrow.svg(fit: BoxFit.cover),
                     ),
                   ],
                 ),
               ),
             ),
           ),
           const SizedBox(height: 15),
           //ButtonColourful(text: "Сохранить", color :colorTheme.primary),
         ],
       ),
     ),
   );
  }

  void _onProduct(BuildContext context) {
    context.router.replace(
      const ConfirmDeleteUserRoute(),
    );
  }

  @override
  void initState() {
    BlocProvider.of<SendActivityBloc>(context)
        .add(const SendActivityEvent.sendActivity(screenName: "Экран настроек"));
    super.initState();
  }
}