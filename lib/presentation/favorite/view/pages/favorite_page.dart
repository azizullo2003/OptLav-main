import 'package:assorted_layout_widgets/assorted_layout_widgets.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../app/routes/router.gr.dart';
import '../../../../app/theme/bloc/app_theme.dart';
import '../../../../generated/assets.gen.dart';
import '../../../main/ data/models/category.dart';
import '../../../main/ data/models/company.dart';
import '../../../sendactivity/bloc/sendactivity_bloc.dart';
import '../bloc/favorite_bloc.dart';
import '../widgets/favorite_companies_widget.dart';
import '../widgets/favorite_products_widget.dart';

class FavoritePage extends StatefulWidget{

  const FavoritePage({Key? key}) : super(key: key);

  @override
  State<FavoritePage> createState() => _FavoritePageState();
}

class _FavoritePageState extends State<FavoritePage> {

  // Переменная состояния: 1 - Товары, 2 - Продавцы
  var current_state = 2;


  @override
  void initState() {
    _sendActivity(context);
    BlocProvider.of<FavoriteBloc>(context)
        .add(const FavoriteEvent.getFavoriteCompanies());
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final colorTheme = AppTheme.of(context).colorTheme;
    return SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 16),
            InkWell(
              onTap: () => context.router.push(
                const MainRoute(),
              ),
              child: Box(
                child: Assets.images.back.svg(fit: BoxFit.cover),
              ),
            ),
            const SizedBox(height: 12),
            Text(
              "Избранное",
              style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.w700,
                  color: colorTheme.blackText),
            ),
            const SizedBox(height: 25),
            Row(
              children: [
                GestureDetector(
                  onTap: () => {
                    if (current_state == 2){
                      setState(() {
                        current_state = 1;
                      })
                    }
                  },
                  child: Text(
                    "Товары",
                    style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w700,
                        color: (){
                          if (current_state == 2){
                            return colorTheme.greyText;
                          } else {
                            return colorTheme.blackText;
                          }
                        }()),
                  ),
                ),
                const SizedBox(width: 90),
                GestureDetector(
                  onTap: () => {
                    if (current_state == 1){
                      setState(() {
                        current_state = 2;
                      })
                    }
                  },
                  child: Text(
                    "Продавцы",
                    style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w700,
                        color: (){
                          if (current_state == 1){
                            return colorTheme.greyText;
                          } else {
                            return colorTheme.blackText;
                          }
                        }()
                    ),
                  ),
                ),
              ],
            ),
            Divider(
              height: 25,
              thickness: 1,
              endIndent: 0,
              color: colorTheme.borderGray,
            ),

            if (current_state == 1)
               const FavoriteProductsWidget(),
            if (current_state == 2)
              FavoriteCompaniesWidget(
                onCompanyCatalog: _onCompanyCatalog,
                onCompanyInfo: _onCompanyInfo,
              )
          ],
        ),
      ),
    );
  }


  void _onProducts(Category category) {
    context.router.push(
      ProductsRoute(category: category),
    );
  }

  void _onCompanyCatalog(Company company) {
    context.pushRoute(MainRoute(children: [
      CatalogsRoute(children: [CompanyCatalog(company: company, fromFavorite: true)]),
    ]));
  }

  void _onCompanyInfo(Company company) {
    // context.router.navigate(
    //   CompanyInfoRoute(company: company),
    // );
    context.pushRoute(MainRoute(children: [
      CatalogsRoute(children: [CompanyInfoRoute(company: company)]),
    ]));

  }

  void _sendActivity(BuildContext context) {
    BlocProvider.of<SendActivityBloc>(context)
        .add( const SendActivityEvent.sendActivity(
        screenName: "Экран избранных товаров и продавцов"));
  }
}