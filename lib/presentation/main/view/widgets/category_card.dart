import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:optlove/presentation/main/%20data/models/category.dart';

import '../../../../app/theme/bloc/app_theme.dart';

class CategoryCard extends StatelessWidget {
  final Category category;

  const CategoryCard({super.key, required this.category});

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
          image: CachedNetworkImageProvider(category.imagesUrl!,
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
            Text(
              category.name,
              style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 15,
                  color: colorTheme.blackText),
            ),
            const Spacer(),
            Text(
              category.count,
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
