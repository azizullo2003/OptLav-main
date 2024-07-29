import 'package:assorted_layout_widgets/assorted_layout_widgets.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:optlove/presentation/main/view/widgets/top_card_widget.dart';

import '../../ data/models/product.dart';
import '../../../../app/routes/router.gr.dart';
import '../../../../app/theme/bloc/app_theme.dart';

class TopWidget extends StatelessWidget {
  final List<Product> products;

  const TopWidget({Key? key, required this.products}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final colorTheme = AppTheme.of(context).colorTheme;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Топ товаров",
          style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w700,
              color: colorTheme.blackText),
        ),
        const SizedBox(height: 12),
        SizedBox(
          height: 430,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              //controller: _controller,
              itemCount: products.length,
              itemBuilder: (BuildContext context, int index) {
                return TopProductCard(
                  product: products[index],
                );
              }),
        ),
        const SizedBox(height: 32),
        Box(
          width: double.infinity,
          child: ElevatedButton(
            onPressed: () => context.router.push(const TopListRoute()),
            style: ElevatedButton.styleFrom(
                elevation: 0,
                backgroundColor: colorTheme.borderGray,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                padding: const EdgeInsets.symmetric(vertical: 16),
                textStyle: TextStyle(
                  color: colorTheme.blackText,
                  fontSize: 17,
                )),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Все топовые товары",
                  style: TextStyle(color: colorTheme.blackText),
                ),
                const SizedBox(width: 8),
                Container(
                  height: 24,
                  width: 24,
                  decoration: BoxDecoration(
                    color: colorTheme.primary,
                    shape: BoxShape.circle,
                  ),
                  child: Center(
                    child: Text(
                      products.length.toString(),
                      style: const TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w500,
                          color: Colors.white),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
