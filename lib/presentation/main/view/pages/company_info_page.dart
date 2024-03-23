import 'package:assorted_layout_widgets/assorted_layout_widgets.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../ data/models/company.dart';
import '../../../../app/theme/bloc/app_theme.dart';
import '../../../../generated/assets.gen.dart';
import '../../../sendactivity/bloc/sendactivity_bloc.dart';

class CompanyInfoPage extends StatelessWidget{

  final Company company;

  const CompanyInfoPage({Key? key, required this.company}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    _sendActivity(context);
    final colorTheme = AppTheme.of(context).colorTheme;
    return SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 16),
            InkWell(
              onTap: () => context.router.navigateBack(),
              child: Box(
                child: Assets.images.back.svg(fit: BoxFit.cover),
              ),
            ),
            const SizedBox(height: 12),
            Text(
              company.name,
              style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.w700,
                  color: colorTheme.blackText),
            ),
            const SizedBox(height: 12),
            Text(
              "Подробная информация",
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                  color: colorTheme.greyText),
            ),
            const SizedBox(height: 32),
            Text(
              "ИНН",
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                  color: colorTheme.blackText),
            ),
            const SizedBox(height: 3),
            Text(
              company.inn,
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                  color: colorTheme.greyText),
            ),
            const SizedBox(height: 16),
            Text(
              "ОГРН",
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                  color: colorTheme.blackText),
            ),
            const SizedBox(height: 3),
            Text(
              company.ogrn?? "",
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                  color: colorTheme.greyText),
            ),
            const SizedBox(height: 16),
            Text(
              "Юр. адрес",
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                  color: colorTheme.blackText),
            ),
            const SizedBox(height: 3),
            Text(
              company.address,
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                  color: colorTheme.greyText),
            ),
            const SizedBox(height: 40),
            Text(
              "Платёжные реквизиты",
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                  color: colorTheme.blackText),
            ),
            const SizedBox(height: 3),
            Text(
              company.bank ?? "Банковские реквизиты",
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                  color: colorTheme.greyText),
            ),
            const SizedBox(height: 16),
            Text(
              "БИК",
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                  color: colorTheme.blackText),
            ),
            const SizedBox(height: 3),
            Text(
              company.bic?? "",
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                  color: colorTheme.greyText),
            ),
            const SizedBox(height: 16),
            Text(
              "К/С",
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                  color: colorTheme.blackText),
            ),
            const SizedBox(height: 3),
            Text(company.cor_account?? "",
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                  color: colorTheme.greyText),
            ),
            const SizedBox(height: 16),
            Text(
              "Р/С",
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                  color: colorTheme.blackText),
            ),
            const SizedBox(height: 3),
            Text(company.pay_account?? "",
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                  color: colorTheme.greyText),
            ),
            const SizedBox(height: 16),
            Text(
              "Получатель",
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                  color: colorTheme.blackText),
            ),
            const SizedBox(height: 3),
            Text(
              company.recipient ?? "Получатель",
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                  color: colorTheme.greyText),
            ),
            const SizedBox(height: 16),
            Text(
              "Доставка",
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                  color: colorTheme.blackText),
            ),
            const SizedBox(height: 3),
            Text(
              company.dostavka?? "",
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                  color: colorTheme.greyText),
            ),
            const SizedBox(height: 16),
            Text(
              "Описание",
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                  color: colorTheme.blackText),
            ),
            const SizedBox(height: 3),
            Text(
              company.opisanie?? "Описание",
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                  color: colorTheme.greyText),
            ),
            if(company.raz_skidka != null)
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 16),
                Text(
                  "Необходимая сумма для скидки",
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                      color: colorTheme.blackText),
                ),
                const SizedBox(height: 3),
                Text(
                  "${company.summa_skidka} руб." ,
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                      color: colorTheme.greyText),
                ),
                const SizedBox(height: 16),
                Text(
                  "Размер скидки",
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                      color: colorTheme.blackText),
                ),
                const SizedBox(height: 3),
                Text(
                  "${company.raz_skidka} %",
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                      color: colorTheme.greyText),
                ),
              ],
            ),

          ],
        ),
      ),
    );
  }

  void _sendActivity(BuildContext context) {
    BlocProvider.of<SendActivityBloc>(context)
        .add( SendActivityEvent.sendActivity(
        screenName: "Экран информации о продавце ${company.name}"));
  }

}