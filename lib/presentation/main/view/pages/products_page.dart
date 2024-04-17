import 'package:assorted_layout_widgets/assorted_layout_widgets.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:optlove/app/routes/router.gr.dart';
import 'package:optlove/core/widgets/in_cart_dialog.dart';
import 'package:optlove/presentation/main/%20data/models/product.dart';
import 'package:optlove/presentation/main/%20data/models/subcategory.dart';
import 'package:optlove/presentation/main/view/widgets/grid_product_card.dart';
import 'package:optlove/presentation/main/view/widgets/product_card.dart';
import '../../../../app/theme/bloc/app_theme.dart';
import '../../../../generated/assets.gen.dart';
import '../../../favorite/view/bloc/favorite_bloc.dart';
import '../bloc/search_bloc.dart';

class ProductsPage extends StatefulWidget {
  final Subcategory category;

  const ProductsPage({super.key, required this.category});

  @override
  State<ProductsPage> createState() => _ProductsPageState();
}

class _ProductsPageState extends State<ProductsPage> {
  var _prev = "";
  final TextEditingController _searchProductController =
      TextEditingController();
  final List<Product> _products = <Product>[];

  double positionOfScroll = 0.0;

  late ScrollController _controller;

  @override
  void initState() {
    _controller = ScrollController();
    _controller.addListener(_scrollListener);
    print("PROD cat id ${widget.category.id}");
    BlocProvider.of<SearchBloc>(context)
        .add(SearchEvent.getProductsByCategory(widget.category.id));
    _searchProductController.addListener(() {
      if (_prev != _searchProductController.text) {
        _prev = _searchProductController.text;
        if (_searchProductController.text.length > 3) {
          BlocProvider.of<SearchBloc>(context).add(
              SearchEvent.searchProductsByCategory(
                  _searchProductController.text, widget.category.id));
        }
        if (_searchProductController.text.isEmpty) {
          BlocProvider.of<SearchBloc>(context)
              .add(SearchEvent.getProductsByCategory(widget.category.id));
        }
      }
    });
    super.initState();
  }

  _scrollListener() {
    print("positionOfScroll $positionOfScroll");
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
                      print("ProductsPage Избрна"),
                      Fluttertoast.showToast(
                          msg: "Товар добавлен в избранное",
                          toastLength: Toast.LENGTH_LONG,
                          gravity: ToastGravity.BOTTOM,
                          timeInSecForIosWeb: 1,
                          backgroundColor: Colors.grey,
                          textColor: Colors.white,
                          fontSize: 16.0)
                    },
                  print("Fav cat id ${widget.category.id}"),
                  BlocProvider.of<SearchBloc>(context).add(
                      SearchEvent.getProductsByCategory(widget.category.id)),
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
                      SearchEvent.getProductsByCategory(widget.category.id)),
                  setState(() {})
                },
            orElse: () => {});
      },
      child: Scaffold(
        body: Padding(
            padding: const EdgeInsets.only(left: 16, right: 16),
            child: ListView(
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 16),
                GestureDetector(
                  onTap: () => {
                    BlocProvider.of<SearchBloc>(context).add(
                        SearchEvent.getAllSubcategories(
                            widget.category.parentId!)),
                    context.router.navigateBack()
                  },
                  child: Box(
                    alignment: Alignment.centerLeft,
                    child: Assets.images.back.svg(fit: BoxFit.cover),
                  ),
                ),
                const SizedBox(height: 12),
                Text(
                  widget.category.name,
                  style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.w700,
                      color: colorTheme.blackText),
                ),
                const SizedBox(height: 12),
                TextField(
                  controller: _searchProductController,
                  decoration: InputDecoration(
                      prefixIcon: Assets.images.search.svg(fit: BoxFit.none),
                      contentPadding:
                          const EdgeInsets.symmetric(vertical: 15.0),
                      filled: true,
                      fillColor: colorTheme.borderGray,
                      enabledBorder: const OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Color(0xF3F3F3FF), width: 0.0),
                          borderRadius:
                              BorderRadius.all(Radius.circular(16.0))),
                      focusedBorder: const OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Color(0xF3F3F3FF), width: 0.0),
                          borderRadius:
                              BorderRadius.all(Radius.circular(16.0))),
                      hintText: 'Введите название продукта',
                      hintStyle: TextStyle(
                          color: colorTheme.greyText,
                          fontSize: 17,
                          fontWeight: FontWeight.w400)),
                ),
                Divider(
                  height: 25,
                  thickness: 1,
                  endIndent: 0,
                  color: colorTheme.borderGray,
                ),
                BlocBuilder<SearchBloc, SearchState>(
                  builder: (context, state) => state.maybeMap(
                      failure: (_) => const SizedBox(),
                      loading: (_) {
                        return const Center(child: CircularProgressIndicator());
                      },
                      productsLoaded: (response) {
                        print("productsLoaded");
                        print(
                            "${response.response.products.length}count of products");

                        _products.clear();
                        _products.addAll(response.response.products);
                        return Padding(
                          padding: const EdgeInsets.only(bottom: 8),
                          child: Scrollbar(
                              child: GridView.builder(
                            controller: _controller,
                            primary: false,
                            physics: const ScrollPhysics(),
                            scrollDirection: Axis.vertical,
                            shrinkWrap: true,
                            itemCount: _products.length,
                            itemBuilder: (BuildContext context, int index) {
                              return InkWell(
                                onTap: () {
                                  print("tapOnProduct");
                                  context.router.push(ProductsInfoRoute(
                                    product: _products[index],
                                  ));
                                },
                                child: GridProductCard(
                                  addOrRemFav: () =>
                                      _favorite(_products[index]),
                                  product: _products[index],
                                  inCart: () => InCartDialog.inCart(
                                      _products[index], context),
                                ),
                              );
                              // return GridProductCard(
                              //   addOrRemFav: () =>
                              //       _favorite(_products[index]),
                              //   product: _products[index],
                              //   inCart: () => InCartDialog.inCart(
                              //       _products[index], context),
                              // );
                            },
                            gridDelegate:
                                const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              mainAxisSpacing: 16,
                              crossAxisSpacing: 24,
                              childAspectRatio: 1 / 2.45,
                            ),
                          )),
                        );
                      },
                      productsFounded: (response) {
                        print("productsFounded");
                        _products.clear();
                        if (response.response.products.isNotEmpty) {
                          _products.addAll(response.response.products);
                          return Expanded(
                            child: Scrollbar(
                              controller: _controller,
                              child: ListView.builder(
                                  controller: _controller,
                                  primary: false,
                                  shrinkWrap: true,
                                  itemCount: _products.length,
                                  itemBuilder:
                                      (BuildContext context, int index) {
                                    return ProductCard(
                                      addOrRemFav: () =>
                                          _favorite(_products[index]),
                                      product: _products[index],
                                      inCart: () => InCartDialog.inCart(
                                          _products[index], context),
                                    );
                                  }),
                            ),
                          );
                        } else {
                          return const Center(
                              child:
                                  Text("Товар с таким названием не неайден"));
                        }
                      },
                      orElse: () {
                        return const Center(child: CircularProgressIndicator());
                      }),
                )
              ],
            )),
      ),
    );
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
