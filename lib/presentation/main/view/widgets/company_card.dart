import 'package:assorted_layout_widgets/assorted_layout_widgets.dart';
import 'package:flutter/material.dart';

import '../../ data/models/company.dart';
import '../../../../app/theme/bloc/app_theme.dart';
import '../../../../generated/assets.gen.dart';

class CompanyCard extends StatefulWidget {
  final VoidCallback onCompanyCatalog;
  final VoidCallback onCompanyInfo;
  final VoidCallback? addOrDelFaovrite;

  final Company company;

  const CompanyCard(
      {Key? key,
      required this.company,
      required this.onCompanyCatalog,
      required this.onCompanyInfo,
      this.addOrDelFaovrite})
      : super(key: key);

  @override
  State<CompanyCard> createState() => _CompanyCardState();
}

class _CompanyCardState extends State<CompanyCard> {
  @override
  Widget build(BuildContext context) {
    final colorTheme = AppTheme.of(context).colorTheme;
    return Container(
      padding: const EdgeInsetsDirectional.all(8),
      decoration: decorationOfBoxes(context),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            children: [
              SizedBox(
                width: 250,
                child: Text(
                  widget.company.name,
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 15,
                      color: colorTheme.blackText),
                ),
              ),
              const Spacer(),
              GestureDetector(
                  onTap: widget.addOrDelFaovrite,
                  child: () {
                    if (widget.company.favorites == "1") {
                      return Assets.images.companyCard.fillStar.svg();
                    } else {
                      return Assets.images.companyCard.star.svg();
                    }
                  }())
            ],
          ),
          const SizedBox(height: 2),
          Text(
            "ИНН ${widget.company.inn}",
            style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 13,
                color: colorTheme.greyText),
          ),
          const SizedBox(height: 5),
          Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Адрес",
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 13,
                        color: colorTheme.blackText),
                  ),
                  const SizedBox(height: 5),
                  SizedBox(
                    width: 200,
                    child: Text(
                      widget.company.address,
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 10,
                          color: colorTheme.greyText),
                    ),
                  ),
                ],
              ),
              const Spacer(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GestureDetector(
                    onTap: widget.onCompanyCatalog,
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
                        "Каталог",
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 13,
                            color: colorTheme.blueSochi),
                      ),
                    ),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    "${widget.company.count_prod} наименований",
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 10,
                        color: colorTheme.primary),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          Box(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: widget.onCompanyInfo,
              style: ElevatedButton.styleFrom(
                  elevation: 0, backgroundColor: colorTheme.primary,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(9),
                  ),
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  textStyle: const TextStyle(
                      fontSize: 17, fontWeight: FontWeight.bold)),
              child: const Text(
                'Информация о продавце',
                style: TextStyle(color: Colors.white),
              ),
            ),
          )
        ],
      ),
    );
  }
}

BoxDecoration decorationOfBoxes(BuildContext context) {
  final colorTheme = AppTheme.of(context).colorTheme;
  return BoxDecoration(
    color: colorTheme.card,
    borderRadius: const BorderRadius.all(Radius.circular(8)),
  );
}
