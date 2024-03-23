import 'package:assorted_layout_widgets/assorted_layout_widgets.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:optlove/app/routes/router.gr.dart';
import 'package:optlove/presentation/main/view/bloc/search_bloc.dart';
import 'package:optlove/presentation/main/view/widgets/product_card.dart';

import '../../ data/models/company.dart';
import '../../ data/models/product.dart';
import '../../../../app/theme/bloc/app_theme.dart';
import '../../../../core/widgets/in_cart_dialog.dart';
import '../../../../generated/assets.gen.dart';
import '../../../favorite/view/bloc/favorite_bloc.dart';
import '../../../sendactivity/bloc/sendactivity_bloc.dart';

class CompanyProducts extends StatefulWidget {
  final Company company;
  final String categoryId;
  final String categoryName;
  final bool? fromFavorite;

  const CompanyProducts(
      {Key? key,
      required this.company,
      required this.categoryId,
      required this.categoryName,
          this.fromFavorite})
      : super(key: key);

  @override
  State<CompanyProducts> createState() => _CompanyProductsState();
}

class _CompanyProductsState extends State<CompanyProducts> {
  final List<Product> _products = <Product>[];
  var _prev = "";
  double positionOfScroll = 0.0;
  final TextEditingController _searchProductController =
      TextEditingController();
  late ScrollController _controller;

  @override
  void initState() {
    _sendActivity(context);
    if (widget.fromFavorite != null){
      BlocProvider.of<SearchBloc>(context).add(
          SearchEvent.getCompanyProductsByCategory(
              widget.categoryId, widget.company.favorit_id?? ""));
    } else {
      BlocProvider.of<SearchBloc>(context).add(
          SearchEvent.getCompanyProductsByCategory(
              widget.categoryId, widget.company.id));
    }

    _controller = ScrollController();
    _controller.addListener(_scrollListener);
    _searchProductController.addListener(() {
      if (_prev != _searchProductController.text) {
        _prev = _searchProductController.text;
        if (_searchProductController.text.length > 3) {
          if (widget.fromFavorite != null) {
            BlocProvider.of<SearchBloc>(context).add(
                SearchEvent.searchProductsByCompanyAndCategory(
                    _searchProductController.text,
                    widget.company.favorit_id?? "",
                    widget.categoryId));
          } else {
            BlocProvider.of<SearchBloc>(context).add(
                SearchEvent.searchProductsByCompanyAndCategory(
                    _searchProductController.text,
                    widget.company.id,
                    widget.categoryId));
          }
        }
        if (_searchProductController.text.isEmpty) {
          if (widget.fromFavorite != null) {
            BlocProvider.of<SearchBloc>(context).add(
                SearchEvent.getCompanyProductsByCategory(
                    widget.categoryId, widget.company.favorit_id?? ""));
          } else {
            BlocProvider.of<SearchBloc>(context).add(
                SearchEvent.getCompanyProductsByCategory(
                    widget.categoryId, widget.company.id));
          }
        }
      }
    });
    super.initState();
  }

  _scrollListener() {
    if (_controller.offset >= _controller.position.maxScrollExtent &&
        !_controller.position.outOfRange) {
      setState(() {});
    }
    if (_controller.offset <= _controller.position.minScrollExtent &&
        !_controller.position.outOfRange) {
      setState(() {});
    }
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
            if (widget.fromFavorite != null) {
              BlocProvider.of<SearchBloc>(context).add(
                  SearchEvent.getCompanyProductsByCategory(
                      widget.categoryId, widget.company.favorit_id?? ""))
            } else {
              BlocProvider.of<SearchBloc>(context).add(
                  SearchEvent.getCompanyProductsByCategory(
                      widget.categoryId, widget.company.id))
            },
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
            if (widget.fromFavorite != null) {
              BlocProvider.of<SearchBloc>(context).add(
                  SearchEvent.getCompanyProductsByCategory(
                      widget.categoryId, widget.company.favorit_id?? ""))
            } else {
              BlocProvider.of<SearchBloc>(context).add(
                  SearchEvent.getCompanyProductsByCategory(
                      widget.categoryId, widget.company.id))
            },
                  setState(() {})
                },
            orElse: () => {});
      },
      child: Scaffold(
        body: Padding(
            padding: const EdgeInsets.only(left: 16, right: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 16),
                GestureDetector(
                  onTap: () =>
                      _onCompanyCatalog(widget.company),
                  child: Box(
                    child: Assets.images.back.svg(fit: BoxFit.cover),
                  ),
                ),
                const SizedBox(height: 12),
                Text(
                  widget.categoryName,
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
                      failure: (_) => const Text("data"),
                      loading: (_) {
                        return const Center(child: CircularProgressIndicator());
                      },
                      productsLoaded: (response) {
                        print("productsLoaded");
                        _products.clear();
                        _products.addAll(response.response.products);
                        return Expanded(
                          child: Scrollbar(
                            controller: _controller,
                            child: ListView.builder(
                                controller: _controller,
                                primary: false,
                                shrinkWrap: true,
                                itemCount: _products.length,
                                itemBuilder: (BuildContext context, int index) {
                                  return ProductCard(
                                    addOrRemFav: () => _favorite(_products[index]),
                                    product: _products[index],
                                    inCart: () => InCartDialog.inCart(
                                        _products[index], context),
                                  );
                                }),
                          ),
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
                                      addOrRemFav: () => _favorite(_products[index]),
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
                ),
              ],
            )),
      ),
    );
  }

  void _onCompanyCatalog(Company company) {
    if (widget.fromFavorite != null) {
      context.router.push(
        CompanyCatalog(company: company, fromFavorite: true),
      );
    } else {
      context.router.push(
        CompanyCatalog(company: company),
      );
    }
  }

  void _sendActivity(BuildContext context) {
    BlocProvider.of<SendActivityBloc>(context).add(SendActivityEvent.sendActivity(
        screenName:
            "Экран продуктов продавца ${widget.company.name} в категории ${widget.categoryName}"));
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
