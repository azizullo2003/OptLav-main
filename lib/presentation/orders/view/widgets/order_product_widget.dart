import 'package:assorted_layout_widgets/assorted_layout_widgets.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../../../app/theme/bloc/app_theme.dart';
import '../../../../generated/assets.gen.dart';
import '../../data/models/order_products.dart';

class OrderProduct extends StatelessWidget {
  final OrderProducts orderProductInfo;
  final VoidCallback deleteCallback;
  final VoidCallback changeCallback;
  final bool isStatusOne;

  const OrderProduct(
      {Key? key,
      required this.orderProductInfo,
      required this.deleteCallback,
      required this.changeCallback,
        required this.isStatusOne})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final colorTheme = AppTheme.of(context).colorTheme;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CachedNetworkImage(
              fit: BoxFit.cover,
              width: 44,
              height: 44,
              imageUrl: () {
                if (orderProductInfo.image != null ) {
                  return orderProductInfo.image;
                } else {
                  return "https://panel.optlav.ru/uploads/defolt.PNG";
                }
              }(),
              imageBuilder: (context, imageProvider) => Container(
                height: 44,
                width: 44,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(8)),
                  image: DecorationImage(
                    image: imageProvider,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              placeholder: (context, url) => const CircularProgressIndicator(),
              errorWidget: (context, url, error) => CachedNetworkImage(
                  imageUrl:
                      "https://panel.optlav.ru/uploads/defolt.PNG"),
            ),
            const SizedBox(
              width: 8,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 150,
                  child: Text(
                    orderProductInfo.name,
                    style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w600,
                        color: colorTheme.blackText),
                  ),
                ),
                //const SizedBox(height: 8),
                SizedBox(
                  width: 150,
                  height: 25,
                  child: Text(
                    orderProductInfo.descrip ?? "",
                    style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w400,
                        color: colorTheme.greyText),
                  ),
                ),
                const SizedBox(height: 8),
                if(isStatusOne)
                GestureDetector(
                  onTap: changeCallback,
                  child: Container(
                    padding: const EdgeInsets.only(
                      bottom: 0.5, // Space between underline and text
                    ),
                    decoration: BoxDecoration(
                        border: Border(
                            bottom: BorderSide(
                      color: colorTheme.blueSochi,
                      width: 1.0, // Underline thickness
                    ))),
                    child: Text(
                      "Изменить",
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 13,
                          color: colorTheme.blueSochi),
                    ),
                  ),
                ),
              ],
            ),
            const Spacer(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      "${orderProductInfo.count} ${orderProductInfo.un_name} ",
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 10,
                          color: colorTheme.blackText),
                    ),
                    Text(
                      "х ${orderProductInfo.price} ₽",
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 10,
                          color: colorTheme.greyText),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  "${orderProductInfo.price_prod} ₽",
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 13,
                      color: colorTheme.blackText),
                ),
              ],
            ),
            const SizedBox(
              width: 12,
            ),
            if(isStatusOne)
            GestureDetector(
              onTap: deleteCallback,
              child: Box(
                child: Assets.images.orders.deleteProduct.svg(),
              ),
            )
          ],
        ),
        Divider(
          height: 25,
          thickness: 1,
          endIndent: 0,
          color: colorTheme.dividerGray,
        ),
      ],
    );
  }
}
