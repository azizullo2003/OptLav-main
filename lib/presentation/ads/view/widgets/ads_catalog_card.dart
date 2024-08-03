import 'package:auto_size_text/auto_size_text.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:optlove/presentation/ads/data/models/ads_category_model.dart';

import '../../../../app/theme/bloc/app_theme.dart';

class AdsCategoryCard extends StatelessWidget {
  final AdsCategory category;

  const AdsCategoryCard({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    final colorTheme = AppTheme.of(context).colorTheme;
    return Card(
      borderOnForeground: false,
      elevation: 0,
      color: colorTheme.card,
      child: Container(
        width: 150,
        height: 86,
        decoration: BoxDecoration(
            image: DecorationImage(
          image: CachedNetworkImageProvider(category.images_url,
              errorListener: (error) {
            print("Error $error");
          }, scale: 5.5),
          fit: BoxFit.none,
          alignment: Alignment.bottomRight,
        )),
        padding: const EdgeInsets.all(8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AutoSizeText(
              category.name,
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 14,
                color: colorTheme.blackText,
              ),
              minFontSize: 12,
              maxLines: 2,
            ),
            const Spacer(),
            Text(
              category.count.toString(),
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 17,
                  color: colorTheme.greyText),
            ),
          ],
        ),
      ),
    );
  }
}
