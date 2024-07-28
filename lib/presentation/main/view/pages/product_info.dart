import 'package:assorted_layout_widgets/assorted_layout_widgets.dart';
import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../../ data/models/product.dart';
import '../../../../app/theme/bloc/app_theme.dart';
import '../../../../core/widgets/in_cart_dialog.dart';
import '../../../../generated/assets.gen.dart';
import '../../../favorite/view/bloc/favorite_bloc.dart';

class ProductsInfoPage extends StatefulWidget {
  final Product product;

  const ProductsInfoPage({super.key, required this.product});

  @override
  State<ProductsInfoPage> createState() => _ProductsInfoPageState();
}

class _ProductsInfoPageState extends State<ProductsInfoPage> {
  final TextEditingController searchProductController = TextEditingController();

  double positionOfScroll = 0.0;

  late ScrollController _controller;

  @override
  void initState() {
    _controller = ScrollController();
    _controller.addListener(_scrollListener);
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
    print(widget.product);
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
                  setState(() {})
                },
            orElse: () => {});
      },
      child: Scaffold(
        body: Padding(
            padding: const EdgeInsets.only(left: 16, right: 16),
            child: ListView(
              children: [
                const SizedBox(height: 16),
                GestureDetector(
                  onTap: () {
                    context.router.navigateBack();
                  },
                  child: Box(
                    alignment: Alignment.centerLeft,
                    child: Assets.images.back.svg(fit: BoxFit.cover),
                  ),
                ),
                const SizedBox(height: 12),
                Container(
                    height: 343,
                    width: MediaQuery.of(context).size.width,
                    color: Colors.transparent,
                    child: CachedNetworkImage(
                      fit: BoxFit.cover,
                      imageUrl: () {
                        if (widget.product.image != null) {
                          return "https://panel.optlav.ru/uploads/products/${widget.product.image!}";
                        } else {
                          return "https://panel.optlav.ru/uploads/defolt.PNG";
                        }
                      }(),
                      placeholder: (context, url) =>
                          const CircularProgressIndicator(),
                      errorWidget: (context, url, error) => CachedNetworkImage(
                          imageUrl:
                              "https://panel.optlav.ru/uploads/icons_color/49.png"),
                    )),
                const SizedBox(height: 16),
                Text(
                  widget.product.name,
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w700,
                    color: colorTheme.blackText,
                  ),
                ),
                Divider(
                  height: 25,
                  thickness: 1,
                  endIndent: 0,
                  color: colorTheme.borderGray,
                ),
                Text(
                  widget.product.opisanie ?? '',
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 13,
                    fontFamily: 'SF Pro Text',
                    fontWeight: FontWeight.w400,
                  ),
                ),
                const SizedBox(height: 12),
                // Container(
                //   height: 74,
                //   padding:
                //   const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                //   decoration: ShapeDecoration(
                //     color: const Color(0xFFFEF3EC),
                //     shape: RoundedRectangleBorder(
                //       borderRadius: BorderRadius.circular(12),
                //     ),
                //   ),
                //   child: Row(
                //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //     children: [
                //       Column(
                //         crossAxisAlignment: CrossAxisAlignment.start,
                //         children: [
                //           Text(
                //             'Акция',
                //             style: TextStyle(
                //               color: Color(0xFF2B2D33),
                //               fontSize: 15,
                //               fontFamily: 'SF Pro Text',
                //               fontWeight: FontWeight.w600,
                //             ),
                //           ),
                //           SizedBox(height: 5),
                //           Text(
                //             'С 1 по 18 агуста скидка 10% при',
                //             style: TextStyle(
                //               color: Color(0xFF55575C),
                //               fontSize: 13,
                //               fontFamily: 'SF Pro Text',
                //               fontWeight: FontWeight.w400,
                //             ),
                //           ),
                //           SizedBox(height: 5),
                //           Text(
                //             'покупке от 2 упаковок',
                //             style: TextStyle(
                //               color: Color(0xFF55575C),
                //               fontSize: 13,
                //               fontFamily: 'SF Pro Text',
                //               fontWeight: FontWeight.w400,
                //             ),
                //           )
                //         ],
                //       ),
                //       Container(
                //         width: 48,
                //         height: 48,
                //         decoration: ShapeDecoration(
                //           color: Color(0xFFFDDAC7),
                //           shape: OvalBorder(),
                //         ),
                //         child: const Icon(
                //           CupertinoIcons.exclamationmark, color: Color(
                //             0xFFCB662F),),
                //       )
                //     ],
                //   ),
                // ),
                // const SizedBox(height: 12),
                Text(
                  "Продавец",
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 10,
                      color: colorTheme.greyText),
                ),
                Text(
                  widget.product.firm_name,
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 10,
                      color: colorTheme.blackText),
                ),
                const SizedBox(height: 12),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Мин. заказ",
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 8,
                              color: colorTheme.greyText),
                        ),
                        Text(
                          "От 1 ${widget.product.un_name}",
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 8,
                              color: colorTheme.blackText),
                        ),
                      ],
                    ),
                    const SizedBox(width: 25),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Цена за 1 ${widget.product.un_name}",
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 8,
                              color: colorTheme.greyText),
                        ),
                        SizedBox(
                          child: Row(
                            children: [
                              // SizedBox(
                              //   height: 30,
                              //   child: Text(
                              //     "${widget.product.price_before} ₽",
                              //     style: TextStyle(
                              //         decoration: TextDecoration.lineThrough,
                              //         fontWeight: FontWeight.w400,
                              //         fontSize: 10,
                              //         color: colorTheme.redText),
                              //   ),
                              // ),
                              Text(
                                "${widget.product.price_before} ₽",
                                style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 16,
                                    color: colorTheme.blackText),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 12),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                      child: Container(
                        width: MediaQuery.of(context).size.width - 80,
                        height: 40,
                        padding: const EdgeInsets.all(8),
                        decoration: ShapeDecoration(
                          shape: RoundedRectangleBorder(
                            side: const BorderSide(
                                width: 1, color: Color(0xFF5DB248)),
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              'Продолжить покупки',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Color(0xFF5DB248),
                                fontSize: 13,
                                fontFamily: 'SF Pro Text',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            Image.asset("assets/images/catalog.png")
                          ],
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        _favorite(widget.product);
                      },
                      child: () {
                        if (widget.product.prod_favorites == "1") {
                          return Assets.images.cart.fillFav
                              .svg(fit: BoxFit.cover);
                        } else {
                          return Assets.images.cart.fav.svg(fit: BoxFit.cover);
                        }
                      }(),
                    )
                  ],
                ),
                const SizedBox(height: 12),
                GestureDetector(
                  onTap: () {
                    InCartDialog.inCart(widget.product, context);
                  },
                  child: Box(
                    height: 40,
                    child: ElevatedButton(
                      onPressed: () {
                        InCartDialog.inCart(widget.product, context);
                      },
                      style: ElevatedButton.styleFrom(
                          elevation: 0,
                          backgroundColor: colorTheme.primary,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          textStyle: const TextStyle(
                              fontSize: 13, fontWeight: FontWeight.w400)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          // const Text('В корзину'),
                          Assets.images.cart.inCart.svg()
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            )),
      ),
    );
  }

  void _favorite(Product product) {
    if (product.prod_favorites == "0") {
      BlocProvider.of<FavoriteBloc>(context)
          .add(FavoriteEvent.addProductToFavorite(product.firm_id, product.id));
    } else {
      BlocProvider.of<FavoriteBloc>(context).add(
          FavoriteEvent.removeProductFromFavorite(product.firm_id, product.id));
    }
  }
}
