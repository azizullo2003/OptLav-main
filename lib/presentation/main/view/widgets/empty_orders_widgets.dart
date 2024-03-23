import 'package:assorted_layout_widgets/assorted_layout_widgets.dart';
import 'package:flutter/material.dart';

import '../../../../app/theme/bloc/app_theme.dart';
import '../../../../generated/assets.gen.dart';

class EmptyOrdersWidget extends StatelessWidget{

  const EmptyOrdersWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final colorTheme = AppTheme.of(context).colorTheme;
    return Container(
      padding:
      const EdgeInsets.only(top: 1, bottom: 16, left: 1, right: 1),
      decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(16)),
          color: colorTheme.lightGreen),
      child: Column(
        children: [
          Column(
            children: [
              Container(
                padding: const EdgeInsets.only(
                    top: 16, bottom: 16, right: 12, left: 12),
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(16),
                      topRight: Radius.circular(16)),
                  color: Colors.white,
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Box(
                      child: Assets.images.home.zayavki
                          .svg(fit: BoxFit.cover),
                    ),
                    const SizedBox(width: 12),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Мои заявки",
                          style: TextStyle(
                              fontSize: 22,
                              color: colorTheme.blackText,
                              fontWeight: FontWeight.w700),
                        ),
                        Text("Активные заявки и история заказов",
                            style: TextStyle(
                                fontSize: 13,
                                color: colorTheme.greyText,
                                fontWeight: FontWeight.w400)),
                      ],
                    ),
                    Box(
                      child: Assets.images.home.arrowRight
                          .svg(fit: BoxFit.cover),
                    ),
                  ],
                ),
              ),
              Container(
                padding:
                const EdgeInsets.only(top: 16, right: 12, left: 12),
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(16),
                        topRight: Radius.circular(16))),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Box(
                      child:
                      Assets.images.home.info.svg(fit: BoxFit.cover),
                    ),
                    const SizedBox(width: 12),
                    Text("Заявок в работе нет",
                        style: TextStyle(
                            color: colorTheme.greenText,
                            fontWeight: FontWeight.w500,
                            fontSize: 17))
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }


}