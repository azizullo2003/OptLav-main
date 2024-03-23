import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:optlove/presentation/main/%20data/models/subcategory.dart';

import '../../../../app/theme/bloc/app_theme.dart';

class SubcatalogCard extends StatefulWidget {
  final Subcategory subcategory;
  final bool? action;
  final VoidCallback onPressed;

  const SubcatalogCard(
      {Key? key,
      required this.subcategory,
      this.action,
      required this.onPressed})
      : super(key: key);

  @override
  State<SubcatalogCard> createState() => _SubcatalogCardState();
}

class _SubcatalogCardState extends State<SubcatalogCard> {
  @override
  Widget build(BuildContext context) {
    final colorTheme = AppTheme.of(context).colorTheme;

    final String productName = widget.subcategory.name.length > 24
        ? "${widget.subcategory.name.substring(0, 24)}..."
        : widget.subcategory.name;

    return GestureDetector(
      onTap: widget.onPressed,
      child: Container(
        width: double.infinity,
        height: 71,
        margin: const EdgeInsets.only(top: 6, right: 6),
        padding:
            const EdgeInsets.only(left: 24, top: 12, right: 24, bottom: 12),
        decoration: BoxDecoration(
          color: const Color.fromRGBO(248, 248, 248, 1.0),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            AutoSizeText(
              productName,
              maxLines: 1,
              textAlign: TextAlign.left,
              style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 19,
                  color: colorTheme.blackText),
              maxFontSize: 15,
              minFontSize: 14,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 12.0),
              child: Image.asset(
                "assets/images/arrow_right.png",
                height: 13,
                width: 18,
              ),
            )
          ],
        ),
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
