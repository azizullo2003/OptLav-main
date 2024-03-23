import 'package:assorted_layout_widgets/assorted_layout_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:optlove/app/theme/bloc/app_theme.dart';

import '../../generated/assets.gen.dart';
import '../../presentation/cart/view/bloc/cart_bloc.dart';
import '../../presentation/main/ data/models/product.dart';
import '../../presentation/orders/data/models/order_products.dart';

class InCartDialog {
  static void inCart(Product product, BuildContext context, {bool? action}) {
    var count = 1;
    //var countFrom = int.parse(product.count_from);
    final TextEditingController countController = TextEditingController();
    countController.text = "$count ${product.un_name}";
    var countMask = MaskTextInputFormatter(
        mask: '########',
        filter: {"#": RegExp(r'[0-9]')},
        type: MaskAutoCompletionType.lazy);
    final colorTheme = AppTheme.of(context).colorTheme;
    showModalBottomSheet(
        isScrollControlled: true,
        useRootNavigator: true,
        context: context,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(24), topLeft: Radius.circular(24))),
        builder: (context) {
          return SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.only(
                  bottom: MediaQuery.of(context).viewInsets.bottom),
              child: StatefulBuilder(builder: (BuildContext context,
                  void Function(void Function()) setModalState) {
                countController.addListener(() {
                  setModalState(() {
                    if (countController.text == "0 шт.") {
                      countController.clear();
                    }
                    var gg = int.parse(countController.text.replaceAll(RegExp('[^0-9]'), ''));
                    count = gg;
                    //countController.selection = TextSelection.fromPosition(TextPosition(offset: gg.toString().length));
                  });
                });
                return Container(
                  padding: const EdgeInsets.all(16),
                  height: 315,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(child: Assets.images.dialogHeader.svg()),
                      const SizedBox(height: 16),
                      Text(
                        "Добавление в корзину",
                        style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w700,
                            color: colorTheme.blackText),
                      ),
                      const SizedBox(height: 24),
                      Text(
                        "Минимальный заказ",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: colorTheme.blackText),
                      ),
                      Text(
                        "от 1 ${product.un_name}",
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 10,
                            color: colorTheme.greyText),
                      ),
                      const SizedBox(height: 16),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Box(
                            height: 40,
                            width: 40,
                            child: ElevatedButton(
                              onPressed: () => {
                                if (count > 0)
                                  {
                                    setModalState(() {
                                      count -= 1;
                                      countController.text =
                                          "$count ${product.un_name}";
                                    })
                                  }
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: () {
                                  if (count == 0) {
                                    return colorTheme.borderGray;
                                  } else {
                                    return colorTheme.primary;
                                  }
                                }(),
                                elevation: 0,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                padding:
                                    const EdgeInsets.symmetric(vertical: 16),
                              ),
                              child: Assets.images.cart.minus.svg(),
                            ),
                          ),
                          SizedBox(
                            width: 239,
                            height: 40,
                            child: TextFormField(
                              controller: countController,
                              keyboardType: TextInputType.phone,
                              inputFormatters: [countMask],
                              textAlign: TextAlign.center,
                              decoration: InputDecoration(
                                contentPadding:
                                    const EdgeInsets.symmetric(vertical: 15.0),
                                filled: true,
                                fillColor: colorTheme.borderGray,
                                enabledBorder: const OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Color(0xF3F3F3FF), width: 0.0),
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(16.0))),
                                focusedBorder: const OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Color(0xF3F3F3FF), width: 0.0),
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(16.0))),
                              ),
                            ),
                          ),
                          Box(
                              height: 40,
                              width: 40,
                              child: GestureDetector(
                                  onTap: () => {
                                        setModalState(() {
                                          count += 1;
                                          countController.text =
                                              "$count ${product.un_name}";
                                        })
                                      },
                                  child: Assets.images.cart.plus.svg())),
                        ],
                      ),
                      const SizedBox(height: 50),
                      Box(
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: () async {
                            // print("ID " +
                            //     product.id +
                            //     " name " +
                            //     product.name +
                            //     " firm id  " +
                            //     product.firm_id +
                            //     " price " +
                            //     product.price_from);
                            print("ID ${product.id} name ${product.name} firm id ${product.firm_id} price ${product.price_before}");
                            if(action == null){
                            BlocProvider.of<CartBloc>(context).add(
                                CartEvent.addToCart(
                                    product.id,
                                    count.toString(),
                                    product.name,
                                    product.firm_id,
                                    product.price_before)
                            );
                            } else {
                              BlocProvider.of<CartBloc>(context).add(
                                  CartEvent.addToCart(
                                      product.id,
                                      count.toString(),
                                      product.name,
                                      product.firm_id,
                                      product.price_action!)
                              );
                            }

                            Navigator.pop(context);
                          },
                          style: ElevatedButton.styleFrom(
                              elevation: 0, backgroundColor: () {
                                if (count == 0) {
                                  return colorTheme.borderGray;
                                } else {
                                  return colorTheme.primary;
                                }
                              }(),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(16),
                              ),
                              padding: const EdgeInsets.symmetric(vertical: 16),
                              textStyle: const TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.bold)),
                          child: const Text('Ок'),
                        ),
                      )
                    ],
                  ),
                );
              }),
            ),
          );
        });
  }

  static void changeCart(OrderProducts orderProductInfo, BuildContext context) {
    var count = int.parse(orderProductInfo.count);
    //var countFrom = int.parse(orderProductInfo.count_from);
    final TextEditingController countController = TextEditingController();
    countController.text = "$count ${orderProductInfo.un_name}";
    var countMask = MaskTextInputFormatter(
        mask: '########',
        filter: {"#": RegExp(r'[0-9]')},
        type: MaskAutoCompletionType.lazy);
    final colorTheme = AppTheme.of(context).colorTheme;
    showModalBottomSheet(
        isScrollControlled: true,
        useRootNavigator: true,
        context: context,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(24), topLeft: Radius.circular(24))),
        builder: (context) {
          return SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.only(
                  bottom: MediaQuery.of(context).viewInsets.bottom),
              child: StatefulBuilder(builder: (BuildContext context,
                  void Function(void Function()) setModalState) {
                countController.addListener(() {
                  setModalState(() {
                    if (countController.text == "0 шт.") {
                      countController.clear();
                    }
                    var gg = int.parse(countController.text.replaceAll(RegExp('[^0-9]'), ''));
                    count = gg;
                    //countController.selection = TextSelection.fromPosition(TextPosition(offset: gg.toString().length));
                  });
                });
                return Container(
                  padding: const EdgeInsets.all(16),
                  height: 315,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(child: Assets.images.dialogHeader.svg()),
                      const SizedBox(height: 16),
                      Text(
                        "Изменение заявки",
                        style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w700,
                            color: colorTheme.blackText),
                      ),
                      const SizedBox(height: 24),
                      Text(
                        "Минимальный заказ",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: colorTheme.blackText),
                      ),
                      Text(
                        "от 1 ${orderProductInfo.un_name}",
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 10,
                            color: colorTheme.greyText),
                      ),
                      const SizedBox(height: 16),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Box(
                            height: 40,
                            width: 40,
                            child: ElevatedButton(
                              onPressed: () => {
                                if (count > 0)
                                  {
                                    setModalState(() {
                                      count -= 1;
                                      countController.text =
                                          "$count ${orderProductInfo.un_name}";
                                    })
                                  }
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: () {
                                  if (count == 0) {
                                    return colorTheme.borderGray;
                                  } else {
                                    return colorTheme.primary;
                                  }
                                }(),
                                elevation: 0,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                padding:
                                    const EdgeInsets.symmetric(vertical: 16),
                              ),
                              child: Assets.images.cart.minus.svg(),
                            ),
                          ),
                          SizedBox(
                            width: 239,
                            height: 40,
                            child: TextFormField(
                              controller: countController,
                              keyboardType: TextInputType.phone,
                              inputFormatters: [countMask],
                              textAlign: TextAlign.center,
                              decoration: InputDecoration(
                                contentPadding:
                                    const EdgeInsets.symmetric(vertical: 15.0),
                                filled: true,
                                fillColor: colorTheme.borderGray,
                                enabledBorder: const OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Color(0xF3F3F3FF), width: 0.0),
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(16.0))),
                                focusedBorder: const OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Color(0xF3F3F3FF), width: 0.0),
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(16.0))),
                              ),
                            ),
                          ),
                          Box(
                              height: 40,
                              width: 40,
                              child: GestureDetector(
                                  onTap: () => {
                                        setModalState(() {
                                          count += 1;
                                          countController.text =
                                              "$count ${orderProductInfo.un_name}";
                                        })
                                      },
                                  child: Assets.images.cart.plus.svg())),
                        ],
                      ),
                      const SizedBox(height: 50),
                      Box(
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: () async {
                            BlocProvider.of<CartBloc>(context).add(
                                CartEvent.changeCart(
                                    orderProductInfo.id_product,
                                    count.toString(),
                                    orderProductInfo.name,
                                    orderProductInfo.firm_id,
                                    orderProductInfo.price));
                            Navigator.pop(context);
                          },
                          style: ElevatedButton.styleFrom(
                              elevation: 0, backgroundColor: () {
                                if (count == 0) {
                                  return colorTheme.borderGray;
                                } else {
                                  return colorTheme.primary;
                                }
                              }(),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(16),
                              ),
                              padding: const EdgeInsets.symmetric(vertical: 16),
                              textStyle: const TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.bold)),
                          child: const Text('Ок'),
                        ),
                      )
                    ],
                  ),
                );
              }),
            ),
          );
        });
  }
}
