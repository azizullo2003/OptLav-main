import 'package:assorted_layout_widgets/assorted_layout_widgets.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:optlove/presentation/main/view/bloc/top_bloc.dart';

import '../../ data/models/product.dart';
import '../../../../app/theme/bloc/app_theme.dart';
import '../../../../core/widgets/in_cart_dialog.dart';
import '../../../../generated/assets.gen.dart';
import '../../../favorite/view/bloc/favorite_bloc.dart';
import '../widgets/product_card.dart';

class TopListPage extends StatefulWidget {
  const TopListPage({Key? key}) : super(key: key);

  @override
  State<TopListPage> createState() => _TopListPageState();
}

class _TopListPageState extends State<TopListPage> {
  late ScrollController _controller;
  final List<Product> _products = <Product>[];

  double positionOfScroll = 0.0;

  @override
  void initState() {
    super.initState();

    BlocProvider.of<TopBloc>(context).add(const TopEvent.getTop());
    _controller = ScrollController();
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
                  BlocProvider.of<TopBloc>(context)
                      .add(const TopEvent.getTop()),
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
                  BlocProvider.of<TopBloc>(context)
                      .add(const TopEvent.getTop()),
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
                      onTap: () => {context.router.navigateBack()},
                      child: Box(
                        child: Assets.images.back.svg(fit: BoxFit.cover),
                      ),
                    ),
                    const SizedBox(height: 12),
                    Text(
                      "Топ товаров",
                      style: TextStyle(
                          fontSize: 32,
                          fontWeight: FontWeight.w700,
                          color: colorTheme.blackText),
                    ),
                    const SizedBox(height: 24),
                    BlocBuilder<TopBloc, TopState>(
                      builder: (context, state) => state.maybeMap(
                          failure: (_) => const Text("data"),
                          loading: (_) {
                            return const Center(
                                child: CircularProgressIndicator());
                          },
                          orElse: () {
                            return const Center(
                                child: CircularProgressIndicator());
                          },
                          topLoaded: (response) {
                            _products.clear();
                            _products.addAll(response.response.prod_top);
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
                                        action: null,
                                        product: _products[index],
                                        inCart: () => InCartDialog.inCart(
                                            _products[index], context,
                                            action: true),
                                      );
                                    }),
                              ),
                            );
                          }),
                    ),
                  ]))),
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
