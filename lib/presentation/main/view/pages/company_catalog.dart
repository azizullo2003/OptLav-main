import 'package:assorted_layout_widgets/assorted_layout_widgets.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:optlove/app/routes/router.gr.dart';
import 'package:optlove/presentation/main/%20data/models/company.dart';

import '../../ data/models/category.dart';
import '../../ data/models/product.dart';
import '../../../../app/theme/bloc/app_theme.dart';
import '../../../../core/widgets/in_cart_dialog.dart';
import '../../../../generated/assets.gen.dart';
import '../../../favorite/view/bloc/favorite_bloc.dart';
import '../../../sendactivity/bloc/sendactivity_bloc.dart';
import '../bloc/search_bloc.dart';
import '../widgets/category_card.dart';
import '../widgets/product_card.dart';

class CompanyCatalog extends StatefulWidget {
  final Company company;
  final bool? fromFavorite;

  const CompanyCatalog({Key? key, required this.company, this.fromFavorite}) : super(key: key);

  @override
  State<CompanyCatalog> createState() => _CompanyCatalogState();
}

class _CompanyCatalogState extends State<CompanyCatalog> {

  var _prev = "";
  final TextEditingController _searchProductController =
      TextEditingController();
  double positionOfScroll = 0.0;
  late ScrollController _controller;
  final List<Category> _categories = <Category>[];
  final List<Product> _products = <Product>[];

  @override
  void initState() {
    _controller = ScrollController();
    _sendActivity(context);
    if(widget.fromFavorite != null){
      BlocProvider.of<SearchBloc>(context)
          .add(SearchEvent.getCompanyCatalog(widget.company.favorit_id?? ""));
    } else {
      BlocProvider.of<SearchBloc>(context)
          .add(SearchEvent.getCompanyCatalog(widget.company.id));
    }
    _searchProductController.addListener(() {
      if (_prev != _searchProductController.text) {
        _prev = _searchProductController.text;
        if (_searchProductController.text.length > 3) {
          BlocProvider.of<SearchBloc>(context).add(
              SearchEvent.searchProductsByCompany(
                  _searchProductController.text, widget.company.id));
        }
        if(_searchProductController.text.isEmpty) {
          BlocProvider.of<SearchBloc>(context)
              .add(SearchEvent.getCompanyCatalog(widget.company.id));
        }
      }
    });
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {

    final colorTheme = AppTheme.of(context).colorTheme;
    return BlocListener<FavoriteBloc, FavoriteState>(
      listener: (context, state) {
        state.maybeMap(
            productAdded: (respone) => {
              if (respone.response.result)
                {
                  Fluttertoast.showToast(
                      msg:
                      "Товар добавлен в избранное",
                      toastLength:
                      Toast.LENGTH_LONG,
                      gravity:
                      ToastGravity.BOTTOM,
                      timeInSecForIosWeb: 1,
                      backgroundColor:
                      Colors.grey,
                      textColor: Colors.white,
                      fontSize: 16.0)
                },
            BlocProvider.of<SearchBloc>(context)
                .add(SearchEvent.getCompanyCatalog(widget.company.id)),
              setState(() {

              })
            },
            productRemoved: (response) => {
              if (response.response.result)
                {
                  Fluttertoast.showToast(
                      msg:
                      "Товар был удалён из избранного",
                      toastLength:
                      Toast.LENGTH_LONG,
                      gravity:
                      ToastGravity.BOTTOM,
                      timeInSecForIosWeb: 1,
                      backgroundColor:
                      Colors.grey,
                      textColor: Colors.white,
                      fontSize: 16.0)
                },
            BlocProvider.of<SearchBloc>(context)
                .add(SearchEvent.getCompanyCatalog(widget.company.id)),
              setState(() {

              })
            },
            orElse: () => {});
      },
  child: SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 16),
            InkWell(
              onTap: () => _onCatalog(),
              child: Box(
                child: Assets.images.back.svg(fit: BoxFit.cover),
              ),
            ),
            const SizedBox(height: 12),
            Text(
              widget.company.name,
              style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.w700,
                  color: colorTheme.blackText),
            ),
            const SizedBox(height: 12),
            Text(
              "ИНН ${widget.company.inn}",
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                  color: colorTheme.greyText),
            ),
            const SizedBox(height: 20),
            Divider(
              height: 25,
              thickness: 1,
              endIndent: 0,
              color: colorTheme.borderGray,
            ),
            TextField(
              controller: _searchProductController,
              decoration: InputDecoration(
                  prefixIcon: Assets.images.search.svg(fit: BoxFit.none),
                  contentPadding: const EdgeInsets.symmetric(vertical: 15.0),
                  filled: true,
                  fillColor: colorTheme.borderGray,
                  enabledBorder: const OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Color(0xF3F3F3FF), width: 0.0),
                      borderRadius: BorderRadius.all(Radius.circular(16.0))),
                  focusedBorder: const OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Color(0xF3F3F3FF), width: 0.0),
                      borderRadius: BorderRadius.all(Radius.circular(16.0))),
                  hintText: 'Введите название продукта',
                  hintStyle: TextStyle(
                      color: colorTheme.greyText,
                      fontSize: 17,
                      fontWeight: FontWeight.w400)),
            ),
            const SizedBox(height: 16),
            BlocBuilder<SearchBloc, SearchState>(
                builder: (context, state) => state.maybeMap(
                    failure: (e) => Text("data ${e.error.message}"),
                    loading: (_) {
                      return Container(
                          child: const Center(child: CircularProgressIndicator()));
                    },
                    categoriesLoaded: (response) {
                      _categories.clear();
                      _categories.addAll(response.response.categories);
                      return GridView.builder(
                        physics: const ScrollPhysics(),
                        scrollDirection: Axis.vertical,
                        shrinkWrap: true,
                        itemCount: _categories.length,
                        itemBuilder: (context, index) => InkWell(
                          onTap: () => _onProduct(widget.company,
                              _categories[index].id, _categories[index].name),
                          child: CategoryCard(
                            category: _categories[index],
                          ),
                        ),
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          mainAxisSpacing: 8,
                          crossAxisSpacing: 8,
                          childAspectRatio: 1.9,
                        ),
                      );
                    },
                    productsFounded: (response) {
                      _products.clear();
                      if (response.response.products.isNotEmpty) {
                        _products.addAll(response.response.products);

                        return Scrollbar(
                          child: ListView.builder(
                            controller: _controller,
                              primary: false,
                              shrinkWrap: true,
                              itemCount: _products.length,
                              itemBuilder: (BuildContext context, int index) {
                                return ProductCard(
                                  addOrRemFav: () => _favorite(_products[index]),
                                  product: _products[index],
                                  inCart: () => InCartDialog.inCart(_products[index], context),
                                );
                              }),
                        );
                      } else {
                        return const Center(
                            child: Text("Товар с таким названием не неайден"));
                      }
                    },
                    orElse: () {
                      return const Center(child: CircularProgressIndicator());
                    }))
          ],
        ),
      ),
    ),
);
  }

  void _onCatalog() {
    if (widget.fromFavorite != null){
      context.router.navigate(const FavoriteRoute());
    } else {
      context.router.replace(
        CatalogRoute(fromCompanyCatalog: true),
      );
    }
  }

  void _sendActivity(BuildContext context) {
    BlocProvider.of<SendActivityBloc>(context)
        .add( SendActivityEvent.sendActivity(screenName: "Экран каталога компании ${widget.company.name}"));
  }

  void _onProduct(Company company, String categoryId, String categoryName) {

    if (widget.fromFavorite != null) {
      print("_onProduct Faav${company.id}");
      context.router.replace(
        CompanyProducts(
            company: company,
            categoryId: categoryId,
            categoryName: categoryName,
        fromFavorite: true),
      );
    } else {
      context.router.replace(
      CompanyProducts(
          company: company,
          categoryId: categoryId,
          categoryName: categoryName)
      );
    }
  }

  void _favorite(Product product) {
    positionOfScroll = _controller.offset;
    if (product.prod_favorites == "0") {
      BlocProvider.of<FavoriteBloc>(context)
          .add(FavoriteEvent.addProductToFavorite(product.firm_id, product.id));
    } else {
      BlocProvider.of<FavoriteBloc>(context).add(
          FavoriteEvent.removeProductFromFavorite(product.firm_id, product.id));
    }

  }

}
