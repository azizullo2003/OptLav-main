import 'dart:async';

import 'package:assorted_layout_widgets/assorted_layout_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:optlove/presentation/main/view/widgets/product_card.dart';

import '../../ data/models/category.dart';
import '../../ data/models/product.dart';
import '../../../../app/theme/bloc/app_theme.dart';
import '../../../../core/widgets/in_cart_dialog.dart';
import '../../../../generated/assets.gen.dart';
import '../../../favorite/view/bloc/favorite_bloc.dart';
import '../bloc/search_bloc.dart';
import 'category_card.dart';

class CatalogsWidget extends StatefulWidget {
  final Function(Category) onProduct;

  const CatalogsWidget({Key? key, required this.onProduct}) : super(key: key);

  @override
  State<CatalogsWidget> createState() => _CatalogsWidgetState();
}

class _CatalogsWidgetState extends State<CatalogsWidget> {
  var _prev = "";
  final TextEditingController _searchProductController =
      TextEditingController();
  Timer? _debounceSearchTimer;
  double positionOfScroll = 0.0;
  final List<Category> _categories = <Category>[];
  final List<Product> _products = <Product>[];
  late ScrollController _controller;

  @override
  void initState() {
    super.initState();
    _controller = ScrollController();
    BlocProvider.of<SearchBloc>(context)
        .add(const SearchEvent.getAllCategories());
    _searchProductController.addListener(() {
      if (_prev != _searchProductController.text) {
        _prev = _searchProductController.text;

        _debounceSearchTimer?.cancel();

        if (_searchProductController.text.length > 2) {
          _debounceSearchTimer = Timer(const Duration(milliseconds: 500), () {
            BlocProvider.of<SearchBloc>(context)
                .add(SearchEvent.searchProducts(_searchProductController.text));
          });
        }

        if (_searchProductController.text.isEmpty) {
          BlocProvider.of<SearchBloc>(context)
              .add(const SearchEvent.getAllCategories());
        }
      }
    });
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    _controller = ScrollController(initialScrollOffset: positionOfScroll);
    final colorTheme = AppTheme.of(context).colorTheme;
    return BlocListener<FavoriteBloc, FavoriteState>(
      listener: (context, state) {
        state.maybeMap(
            productAdded: (respone) => {
                  if (respone.response.result)
                    {
                      Fluttertoast.showToast(
                          msg: "Товар добавлен в избранное",
                          toastLength: Toast.LENGTH_LONG,
                          gravity: ToastGravity.BOTTOM,
                          timeInSecForIosWeb: 1,
                          backgroundColor: Colors.grey,
                          textColor: Colors.white,
                          fontSize: 16.0)
                    },
                  BlocProvider.of<SearchBloc>(context).add(
                      SearchEvent.searchProducts(
                          _searchProductController.text)),
                  setState(() {})
                },
            productRemoved: (response) => {
                  if (response.response.result)
                    {
                      Fluttertoast.showToast(
                          msg: "Товар был удалён из избранного",
                          toastLength: Toast.LENGTH_LONG,
                          gravity: ToastGravity.BOTTOM,
                          timeInSecForIosWeb: 1,
                          backgroundColor: Colors.grey,
                          textColor: Colors.white,
                          fontSize: 16.0)
                    },
                  BlocProvider.of<SearchBloc>(context).add(
                      SearchEvent.searchProducts(
                          _searchProductController.text)),
                  setState(() {})
                },
            orElse: () => {});
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
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
              failure: (_) => Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Что-то пошло не так",
                    style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w400,
                        color: colorTheme.blackText),
                  ),
                  const SizedBox(height: 8),
                  Box(
                    width: double.infinity,
                    padding: const Pad(horizontal: 16),
                    child: ElevatedButton(
                      onPressed: () => {
                        BlocProvider.of<SearchBloc>(context)
                            .add(const SearchEvent.getAllCategories())
                      },
                      style: ElevatedButton.styleFrom(
                          elevation: 0,
                          backgroundColor: colorTheme.primary,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16),
                          ),
                          padding: const EdgeInsets.symmetric(vertical: 16),
                          textStyle: const TextStyle(
                              fontSize: 17, fontWeight: FontWeight.bold)),
                      child: const Text("Обновить"),
                    ),
                  )
                ],
              ),
              loading: (_) {
                print("categoriesloading");
                return const Center(child: CircularProgressIndicator());
              },
              categoriesLoaded: (response) {
                print("categoriesLoaded");
                _categories.clear();
                _categories.addAll(response.response.categories);
                return GridView.builder(
                  physics: const ScrollPhysics(),
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  itemCount: _categories.length,
                  itemBuilder: (context, index) => InkWell(
                    onTap: () => {
                      print("tapOnProduct"),
                      widget.onProduct(_categories[index])
                    },
                    child: CategoryCard(
                      category: _categories[index],
                    ),
                  ),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 8,
                    crossAxisSpacing: 8,
                    childAspectRatio: 1.9,
                  ),
                );
              },
              productsFounded: (response) {
                print("categoriesorproductsFounded");
                _products.clear();
                if (response.response.products.isNotEmpty) {
                  _products.addAll(response.response.products);
                  print(_products);

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
                            inCart: () =>
                                InCartDialog.inCart(_products[index], context),
                          );
                        }),
                  );
                } else {
                  return const Center(
                      child: Text("Товар с таким названием не неайден"));
                }
              },
              orElse: () {
                print(state.toString());
                print("categoriesorElse");
                print("1");
                return const Center(child: CircularProgressIndicator());
              },
            ),
          )
        ],
      ),
    );
  }

  void _favorite(Product product) {
    print("Company Cataolog ");
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
