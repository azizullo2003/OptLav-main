import 'package:assorted_layout_widgets/assorted_layout_widgets.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../../../app/theme/bloc/app_theme.dart';
import '../../../../generated/assets.gen.dart';
import '../../../main/ data/models/product.dart';

class FavoriteProductCard extends StatefulWidget {
  final Product product;
  final VoidCallback inCart;
  final bool? action;
  final VoidCallback addOrRemFav;

  const FavoriteProductCard(
      {Key? key,
      required this.product,
      required this.inCart,
      this.action,
      required this.addOrRemFav})
      : super(key: key);

  @override
  State<FavoriteProductCard> createState() => _ProductCardState();
}

class _ProductCardState extends State<FavoriteProductCard> {
  var fullDescription = false;

  @override
  Widget build(BuildContext context) {
    final colorTheme = AppTheme.of(context).colorTheme;
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: decorationOfBoxes(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CachedNetworkImage(
            fit: BoxFit.contain,
            imageUrl: () {
              if (widget.product.name_image != null) {
                return "https://panel.optlav.ru/uploads/products/thumb_${widget.product.name_image!}";
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
          // Image.network(
          //     errorBuilder: (context, exception, stackTrace) {
          //       return Text('Your error widget...');
          //     },
          //     height: 188,
          //     width: 327,
          //     fit: BoxFit.cover,
          //     () {
          //       if (product.image != null) {
          //         return "https://panel.optlav.ru/uploads/products/${product.image!}";
          //       }
          //       return "https://panel.optlav.ru/uploads/icons_color/49.png";
          //     }()),
          const SizedBox(height: 16),
          SizedBox(
            width: 300,
            child: Text(
              widget.product.name,
              style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 22,
                  color: colorTheme.blackText),
            ),
          ),
          const SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GestureDetector(
                    onTap: () => {
                      setState(() {
                        if (fullDescription) {
                          fullDescription = false;
                        } else {
                          fullDescription = true;
                        }
                      })
                    },
                    child: SizedBox(
                      width: 140,
                      height: !fullDescription ? 25 : null,
                      child: Text(
                          overflow: TextOverflow.fade,
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 10,
                              color: colorTheme.blackText), () {
                        if (widget.product.opisanie == null) {
                          return "Описания нет";
                        } else {
                          return widget.product.opisanie!;
                        }
                      }()),
                    ),
                  ),
                  const SizedBox(height: 16),
                  Text(
                    "Продавец",
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 10,
                        color: colorTheme.greyText),
                  ),
                  Text(
                    widget.product.firm_name,
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 10,
                        color: colorTheme.blackText),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    "Мин. заказ",
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 10,
                        color: colorTheme.greyText),
                  ),
                  Text(
                    "от 1 ${widget.product.un_name}",
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 10,
                        color: colorTheme.blackText),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    "Регион доставки",
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 10,
                        color: colorTheme.greyText),
                  ),
                  Text(
                    "Краснодарский край",
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 10,
                        color: colorTheme.blackText),
                  ),
                ],
              ),
              Column(
                children: [
                  Text(
                    "Цена за ${widget.product.un_name}",
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 10,
                        color: colorTheme.greyText),
                  ),
                  if (widget.action != null)
                    Row(
                      children: [
                        SizedBox(
                          height: 40,
                          child: Text(
                            "${widget.product.price_before} ₽",
                            style: TextStyle(
                                decoration: TextDecoration.lineThrough,
                                fontWeight: FontWeight.w700,
                                fontSize: 12,
                                color: colorTheme.redText),
                          ),
                        ),
                        Text(
                          "${widget.product.price_action} ₽",
                          style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 22,
                              color: colorTheme.blackText),
                        ),
                      ],
                    ),
                  if (widget.action == null)
                    Text(
                      "${widget.product.price_before} ₽",
                      style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 22,
                          color: colorTheme.blackText),
                    ),
                ],
              )
            ],
          ),
          const SizedBox(
            height: 16,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: widget.inCart,
                child: Box(
                  width: 215,
                  height: 40,
                  child: ElevatedButton(
                    onPressed: widget.inCart,
                    style: ElevatedButton.styleFrom(
                        elevation: 0,
                        backgroundColor: colorTheme.primary,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        textStyle: const TextStyle(
                            fontSize: 13, fontWeight: FontWeight.w400)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        // const Text('В корзину'),
                        Assets.images.cart.inCart.svg()
                      ],
                    ),
                  ),
                ),
              ),
              GestureDetector(
                  onTap: () => {
                        setState(() {
                          if (fullDescription) {
                            fullDescription = false;
                          } else {
                            fullDescription = true;
                          }
                        })
                      },
                  child: Assets.images.cart.info.svg(fit: BoxFit.cover)),
              GestureDetector(
                onTap: widget.addOrRemFav,
                child: () {
                  if (widget.product.prod_favorites == "1") {
                    return Assets.images.cart.fillFav.svg(fit: BoxFit.cover);
                  } else {
                    return Assets.images.cart.fav.svg(fit: BoxFit.cover);
                  }
                }(),
              )
            ],
          )
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
}
