import 'package:assorted_layout_widgets/assorted_layout_widgets.dart';
import 'package:flutter/material.dart';

import '../../../../app/theme/bloc/app_theme.dart';
import '../../../../generated/assets.gen.dart';
import '../../../orders/data/models/order_info.dart';

class ExistOrdersWidget extends StatelessWidget{

  final List<OrderInfo> data;
  final String ordersInWork;

  const ExistOrdersWidget({Key? key, required this.data, required this.ordersInWork}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final colorTheme = AppTheme.of(context).colorTheme;
    return Container(
      padding:
      const EdgeInsets.only(top: 1, bottom: 16, left: 1, right: 1),
      decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(16)),
          color: colorTheme.lightOrange),
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
                      child: Assets.images.home.existOrder.svg(fit: BoxFit.cover),
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
                      Assets.images.home.orangeInfo.svg(fit: BoxFit.cover),
                    ),
                    const SizedBox(width: 12),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(ordersInWork,
                            style: TextStyle(
                                color: colorTheme.orange,
                                fontWeight: FontWeight.w500,
                                fontSize: 17),
                        ),
                        const SizedBox(height: 8),
                        for (var i = 0;
                        i < data.length;
                        i++)
                          _orderInfo(data[i], context)
                      ],
                    ),
                  ],
                ),
              ),



            ],
          )

        ],
      ),
    );
  }

  Widget _orderInfo (OrderInfo orderInfo, BuildContext context){
    final colorTheme = AppTheme.of(context).colorTheme;
    return Row(
      children: [
        SizedBox(
          width: 80,
          child: Text("№ ${orderInfo.id}",
              style: TextStyle(
                  color: colorTheme.greyBarBottomText,
                  fontWeight: FontWeight.w400,
                  fontSize: 13)
          ),
        ),
        SizedBox(
          width: 130,
          child: Text("сумма ${orderInfo.sum?? ""} ₽",
              style: TextStyle(
                  color: colorTheme.greyBarBottomText,
                  fontWeight: FontWeight.w400,
                  fontSize: 13)
          ),
        ),
        Text("${orderInfo.orders_created}",
            style: TextStyle(
                color: colorTheme.greyBarBottomText,
                fontWeight: FontWeight.w400,
                fontSize: 13)
        ),
      ],
    );
  }


}