import 'package:assorted_layout_widgets/assorted_layout_widgets.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../ data/models/product.dart';
import '../../../../app/theme/bloc/app_theme.dart';
import '../../../../core/widgets/in_cart_dialog.dart';

class TopProductCard extends StatelessWidget {
  final Product product;

  const TopProductCard(
      {Key? key, required this.product})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final colorTheme = AppTheme.of(context).colorTheme;
    return Container(
      margin: const EdgeInsets.only(right: 16),
      padding: const EdgeInsets.all(8),
      decoration: decorationOfBox(context),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CachedNetworkImage(
            height: 188,
            width: 188,
            fit: BoxFit.contain,
            imageUrl: () {
              if (product.image != null) {
                return "https://panel.optlav.ru/uploads/products/thumb_${product.image!}";
              } else {
                return "https://panel.optlav.ru/uploads/defolt.PNG";
              }
            }(),
            // imageBuilder: (context, imageProvider) => Container(
            //   decoration: BoxDecoration(
            //     image: DecorationImage(
            //       image: imageProvider,
            //       fit: BoxFit.contain,
            //     ),
            //   ),
            // ),
            placeholder: (context, url) => const CircularProgressIndicator(),
            errorWidget: (context, url, error) => CachedNetworkImage(
                imageUrl: "https://panel.optlav.ru/uploads/icons_color/49.png"),
          ),
          const SizedBox(height: 16),
          SizedBox(
            width: 175,
            height: 50,
            child: Text(
              product.name,
              style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 13,
                  color: colorTheme.blackText),
            ),
          ),
          const SizedBox(height: 5),
          SizedBox(
            width: 175,
            height: 30,
            child: Text(
              product.opisanie ?? "",
              style: TextStyle(
                  overflow: TextOverflow.ellipsis,
                  fontWeight: FontWeight.w400,
                  fontSize: 8,
                  color: colorTheme.blackText),
            ),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Мин. заказ",
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 8,
                        color: colorTheme.greyText),
                  ),
                  Text(
                    "От 1 ${product.un_name}",
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 8,
                        color: colorTheme.blackText),
                  ),
                ],
              ),
              const SizedBox(width: 25),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Цена за 1 ${product.un_name}",
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 8,
                        color: colorTheme.greyText),
                  ),
                  SizedBox(
                    child: Text(
                      "${product.price_before} ₽",
                      style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 22,
                          color: colorTheme.blackText),
                    ),
                  ),
                ],
              )
            ],
          ),
          Text(
            "Продавец",
            style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 10,
                color: colorTheme.greyText),
          ),
          Text(
            product.firm_name,
            style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 10,
                color: colorTheme.blackText),
          ),
          const SizedBox(height: 12),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              GestureDetector(
                //onTap: widget.inCart,
                child: Box(
                  width: 150,
                  height: 40,
                  child: ElevatedButton(
                    onPressed: () => InCartDialog.inCart(product, context),
                    style: ElevatedButton.styleFrom(
                        elevation: 0, backgroundColor: colorTheme.primary,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        textStyle: const TextStyle(
                            fontSize: 10, fontWeight: FontWeight.w400)),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('В корзину'),
                        //Assets.images.cart.inCart.svg()
                      ],
                    ),
                  ),
                ),
              ),

            ],
          )
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
}
