import 'package:assorted_layout_widgets/assorted_layout_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:optlove/presentation/favorite/view/widgets/favorite_product_card.dart';

import '../../../../app/theme/bloc/app_theme.dart';
import '../../../../core/widgets/in_cart_dialog.dart';
import '../../../main/ data/models/product.dart';
import '../bloc/favorite_bloc.dart';

class FavoriteProductsWidget extends StatefulWidget {
  const FavoriteProductsWidget({Key? key}) : super(key: key);

  @override
  State<FavoriteProductsWidget> createState() => _FavoriteProductsWidgetState();
}

class _FavoriteProductsWidgetState extends State<FavoriteProductsWidget> {
  final List<Product> _products = <Product>[];
  double positionOfScroll = 0.0;
  late ScrollController _controller;

  @override
  void initState() {
    _controller = ScrollController();
    print("FavoriteProductsWidget");
    BlocProvider.of<FavoriteBloc>(context)
        .add(const FavoriteEvent.getFavoriteProducts());
    super.initState();
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
            BlocProvider.of<FavoriteBloc>(context)
                .add(const FavoriteEvent.getFavoriteProducts()),
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
        BlocProvider.of<FavoriteBloc>(context)
            .add(const FavoriteEvent.getFavoriteProducts()),
                  setState(() {})
                },
            orElse: () => {});
      },
      child: Column(
        children: [
          BlocBuilder<FavoriteBloc, FavoriteState>(
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
                          BlocProvider.of<FavoriteBloc>(context)
                              .add(const FavoriteEvent.getFavoriteProducts())
                        },
                        style: ElevatedButton.styleFrom(
                            elevation: 0, backgroundColor: colorTheme.primary,
                            shape: RoundedRectangleBorder(
                              borderRadius:
                              BorderRadius.circular(16),
                            ),
                            padding: const EdgeInsets.symmetric(
                                vertical: 16),
                            textStyle: const TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.bold)),
                        child: const Text("Обновить"),
                      ),
                    )
                  ],
                ),
                loading: (_) {
                  return const Center(child: CircularProgressIndicator());
                },
                productsLoaded: (response) {
                  if (response.response.result) {
                    if (response.response.massiv_id.isNotEmpty) {
                      _products.clear();
                      _products.addAll(response.response.massiv_id);
                      return Scrollbar(
                        child: ListView.builder(
                            controller: _controller,
                            primary: false,
                            shrinkWrap: true,
                            itemCount: _products.length,
                            itemBuilder: (BuildContext context, int index) {
                              return FavoriteProductCard(
                                addOrRemFav: () => _favorite(_products[index]),
                                product: _products[index],
                                inCart: () =>
                                    InCartDialog.inCart(
                                        _products[index], context),
                              );
                            }),
                      );
                    } else {
                      return Center(
                        child: Text(
                          "Список избранных товаров пуст",
                          style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.w400,
                              color: colorTheme.greyText),
                        ),
                      );
                    }
                  } else {
                    return Column(
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
                              BlocProvider.of<FavoriteBloc>(context)
                                  .add(const FavoriteEvent.getFavoriteProducts())
                            },
                            style: ElevatedButton.styleFrom(
                                elevation: 0, backgroundColor: colorTheme.primary,
                                shape: RoundedRectangleBorder(
                                  borderRadius:
                                  BorderRadius.circular(16),
                                ),
                                padding: const EdgeInsets.symmetric(
                                    vertical: 16),
                                textStyle: const TextStyle(
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold)),
                            child: const Text("Обновить"),
                          ),
                        )
                      ],
                    );
                  }
                },
                orElse: () {
                  return const Center(child: CircularProgressIndicator());
                }),
          )
        ],
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
