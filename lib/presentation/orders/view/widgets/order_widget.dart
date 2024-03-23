import 'package:assorted_layout_widgets/assorted_layout_widgets.dart';
import 'package:flutter/material.dart';
import 'package:optlove/presentation/orders/data/models/order_info.dart';
import 'package:optlove/presentation/orders/view/widgets/status_widget.dart';

import '../../../../app/theme/bloc/app_theme.dart';
import '../../../../generated/assets.gen.dart';

class OrderWidget extends StatelessWidget {
  final OrderInfo orderInfo;
  final VoidCallback onOrderInfo;
  final VoidCallback onConditions;

  OrderWidget(
      {Key? key,
      required this.orderInfo,
      required this.onOrderInfo,
      required this.onConditions})
      : super(key: key);

  String statusText = "";
  Color selectedColor = Colors.white;

  @override
  Widget build(BuildContext context) {
    _chooseColorAndTextStatus(context);
    final colorTheme = AppTheme.of(context).colorTheme;
    return Container(
      decoration: decorationOfBox(context),
      padding: const EdgeInsetsDirectional.all(8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Заявка № ${orderInfo.id}",
            style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.w700,
                color: colorTheme.blackText),
          ),
          const SizedBox(height: 8),
          SizedBox(
              width: 155,
              child: StatusWidget(
                  withCount: false, text: statusText, color: selectedColor)),
          Divider(
            height: 25,
            thickness: 1,
            endIndent: 0,
            color: colorTheme.borderGray,
          ),
          Row(
            children: [
              Text(
                "Наименований",
                style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w600,
                    color: colorTheme.blackText),
              ),
              const Spacer(),
              Text(
                orderInfo.count_sum ?? "",
                style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w600,
                    color: colorTheme.blackText),
              )
            ],
          ),
          const SizedBox(height: 8),
          Text(
            "Продавец",
            style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w600,
                color: colorTheme.blackText),
          ),
          const SizedBox(height: 8),
          Text(
            orderInfo.name_user ?? "",
            style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w700,
                color: colorTheme.blackText),
          ),
          Divider(
            height: 25,
            thickness: 1,
            endIndent: 0,
            color: colorTheme.borderGray,
          ),
          Text(
            "Общая сумма",
            style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w600,
                color: colorTheme.blackText),
          ),
          Text(
            "${orderInfo.sum?? ""} ₽",
            style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w700,
                color: colorTheme.blackText),
          ),
          const SizedBox(height: 32),
          GestureDetector(
            onTap: onOrderInfo,
            child: Row(
              children: [
                Box(
                  child: Assets.images.orders.infoIcon.svg(),
                ),
                const SizedBox(width: 16),
                Text(
                  "Подробная информация",
                  style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w400,
                      color: colorTheme.blackText),
                ),
                const Spacer(),
                Box(
                  child: Assets.images.orders.toNextArrow.svg(),
                )
              ],
            ),
          ),
          // Divider(
          //   height: 25,
          //   thickness: 1,
          //   endIndent: 0,
          //   color: colorTheme.borderGray,
          // ),
          //const SizedBox(height: 8),
          // ConditionsButton(
          //   onConditions: onConditions,
          // ),
          // SizedBox(height: 8),
          //const SendButton()
        ],
      ),
    );
  }

  BoxDecoration decorationOfBox(BuildContext context) {
    final colorTheme = AppTheme.of(context).colorTheme;
    return BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.all(Radius.circular(12)),
        border: Border.all(color: colorTheme.borderGrayForOrder));
  }

  void _chooseColorAndTextStatus(BuildContext context) {
    final colorTheme = AppTheme.of(context).colorTheme;
    switch (orderInfo.status) {
      case "1":
        selectedColor = colorTheme.blueSochi;
        statusText = orderInfo.statuss.type_1;
        break;
      case "2":
        selectedColor = colorTheme.greenText;
        statusText = orderInfo.statuss.type_2;
        break;
      case "3":
        selectedColor = colorTheme.orange;
        statusText = orderInfo.statuss.type_3;
        break;
      case "4":
        selectedColor = colorTheme.redText;
        statusText = orderInfo.statuss.type_4;
        break;
    }
  }
}
