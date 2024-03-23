import 'package:assorted_layout_widgets/assorted_layout_widgets.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../ data/models/product.dart';
import '../../../../app/theme/bloc/app_theme.dart';
import '../../../../generated/assets.gen.dart';

class GridProductCard extends StatefulWidget {
  final Product product;
  final VoidCallback inCart;
  final bool? action;
  final VoidCallback addOrRemFav;

  const GridProductCard(
      {Key? key,
      required this.product,
      required this.inCart,
      this.action,
      required this.addOrRemFav})
      : super(key: key);

  @override
  State<GridProductCard> createState() => _GridProductCardState();
}

class _GridProductCardState extends State<GridProductCard> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final double imageContainerHeight = (width - 26 - 32) / 2;
    final colorTheme = AppTheme.of(context).colorTheme;

    final String productName = widget.product.name.length > 14
        ? "${widget.product.name.substring(0, 14)}..."
        : widget.product.name;
    final String firmName = widget.product.firm_name.length > 19
        ? "${widget.product.firm_name.substring(0, 19)}..."
        : widget.product.firm_name;

    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: <Widget>[
              Container(
                  height: imageContainerHeight,
                  padding: const EdgeInsets.all(16),
                  decoration: decorationOfBoxes(),
                  child: CachedNetworkImage(
                    fit: BoxFit.contain,
                    width: 228,
                    height: 228,
                    imageUrl: () {
                      if (widget.product.image != null) {
                        return "https://panel.optlav.ru/uploads/products/${widget.product.image!}";
                      } else {
                        return "https://panel.optlav.ru/uploads/defolt.PNG";
                      }
                    }(),
                    placeholder: (context, url) =>
                        const CircularProgressIndicator(),
                    errorWidget: (context, url, error) => CachedNetworkImage(
                        imageUrl:
                            "https://panel.optlav.ru/uploads/icons_color/49.png"),
                  )),
              Align(
                alignment: Alignment.topRight,
                child: GestureDetector(
                  onTap: widget.addOrRemFav,
                  child: Container(
                    width: 55,
                    height: 55,
                    margin: const EdgeInsets.only(top: 6, right: 6),
                    child: () {
                      if (widget.product.prod_favorites == "1") {
                        return Assets.images.cart.newFillFav
                            .image(fit: BoxFit.cover);
                      } else {
                        return Assets.images.cart.newFav
                            .image(fit: BoxFit.cover);
                      }
                    }(),
                  ),
                ),
              )
            ],
          ),
          const SizedBox(height: 16),
          AutoSizeText(
            "${widget.product.price_before} ₽/шт",
            maxLines: 1,
            textAlign: TextAlign.left,
            style: TextStyle(
                fontWeight: FontWeight.w800,
                fontSize: 20,
                color: colorTheme.primary),
            maxFontSize: 21,
            minFontSize: 16,
          ),
          // const SizedBox(height: 4),
          // Text(
          //   "В упаковке ${widget.product.count_package} шт",
          //   style: TextStyle(
          //       fontSize: 14,
          //       color: Color.fromRGBO(135, 153, 168, 1)),
          // ),
          const SizedBox(height: 12),
          AutoSizeText(
            productName,
            maxLines: 1,
            textAlign: TextAlign.left,
            style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 19,
                color: colorTheme.blackText),
            maxFontSize: 20,
            minFontSize: 15,
          ),
          const SizedBox(height: 14),
          AutoSizeText(
            firmName,
            maxLines: 1,
            textAlign: TextAlign.left,
            style: const TextStyle(
                fontSize: 14, color: Color.fromRGBO(135, 153, 168, 1)),
            maxFontSize: 15,
            minFontSize: 11,
          ),
          const SizedBox(height: 14),
          GestureDetector(
            onTap: widget.inCart,
            child: Box(
              height: 46,
              child: ElevatedButton(
                onPressed: widget.inCart,
                style: ElevatedButton.styleFrom(
                    elevation: 0,
                    backgroundColor: colorTheme.primary,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    textStyle: const TextStyle(
                        fontSize: 13, fontWeight: FontWeight.w400)),
                child: const AutoSizeText(
                  'Добавить в корзину',
                  maxLines: 1,
                  textAlign: TextAlign.left,
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 14),
                  maxFontSize: 15,
                  minFontSize: 10,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  BoxDecoration decorationOfBoxes() {
    return BoxDecoration(
      color: Colors.white,
      border: Border.all(
        color: const Color.fromRGBO(212, 221, 229, 1),
        width: 1.5,
      ),
      borderRadius: const BorderRadius.all(Radius.circular(8)),
    );
  }
}
