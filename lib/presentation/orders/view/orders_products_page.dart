import 'package:assorted_layout_widgets/assorted_layout_widgets.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:optlove/core/widgets/in_cart_dialog.dart';
import 'package:optlove/presentation/cart/view/bloc/cart_bloc.dart';
import 'package:optlove/presentation/orders/data/models/delivery_address.dart';
import 'package:optlove/presentation/orders/data/models/type_price.dart';
import 'package:optlove/presentation/orders/view/bloc/conditions_bloc.dart';
import 'package:optlove/presentation/orders/view/widgets/conditionsButton.dart';
import 'package:optlove/presentation/orders/view/widgets/order_product_widget.dart';
import 'package:optlove/presentation/orders/view/widgets/send_button.dart';
import 'package:optlove/presentation/orders/view/widgets/status_widget.dart';
import 'package:yandex_mobileads/mobile_ads.dart';

import '../../../app/routes/router.gr.dart';
import '../../../app/theme/bloc/app_theme.dart';
import '../../../generated/assets.gen.dart';
import '../../sendactivity/bloc/sendactivity_bloc.dart';
import '../data/models/deliveries.dart';
import '../data/models/order_info.dart';
import '../data/models/order_products.dart';
import 'bloc/orders_bloc.dart';
import '../../../../core/constants.dart';

class OrdersProductsPage extends StatefulWidget {
  final OrderInfo order;

  const OrdersProductsPage({Key? key, required this.order}) : super(key: key);

  @override
  State<OrdersProductsPage> createState() => _OrdersProductsState();
}

class _OrdersProductsState extends State<OrdersProductsPage> {
  String statusText = "";
  Color selectedColor = Colors.white;
  TypePrice? selectedTypeOfPayment;
  Deliveries? selectedTypeOfDelivery;
  DeliveryAddress? selectedDeliveryAddress;
  bool conditionsReady = false;
  double sum = 0;
  double skidka = 0;
  double skidkaProcent = 0;
  double sumProcent = 0;
  double sumSkidka = 0;
  int selectedMinSum = 0;
  bool isStatusOne = false;
  final List<OrderProducts> _orderProductsList = <OrderProducts>[];

  // late final _interstitialAD;

  late var adUnitId = getYandexInterstitialID();
  InterstitialAd? _ad;
  late final Future<InterstitialAdLoader> _adLoader =
      _createInterstitialAdLoader();
  var adRequest = const AdRequest();
  late var _adRequestConfiguration = AdRequestConfiguration(adUnitId: adUnitId);
  var isLoading = false;

  @override
  void initState() {
    super.initState();
    BlocProvider.of<OrdersBloc>(context)
        .add(OrdersEvent.getOrderById(widget.order.id));
    BlocProvider.of<SendActivityBloc>(context).add(
        SendActivityEvent.sendActivity(
            screenName: "Экран заявки №${widget.order.id}"));

    _loadInterstitialAd();
  }

  // _initInterstitialAD() async {
  //   _interstitialAD = await InterstitialAd.create(
  //     adUnitId: getYandexInterstitialID(),
  //     onAdLoaded: () {},
  //     onAdFailedToLoad: (error) {},
  //   );
  // }

  Future<void> _loadInterstitialAd() async {
    final adLoader = await _adLoader;
    setState(() => isLoading = true);
    await adLoader.loadAd(adRequestConfiguration: _adRequestConfiguration);
  }

  Future<void> showInterstitialAd() async {
    final ad = _ad;
    if (ad != null) {
      _setAdEventListener(ad);
      await ad.show();
      await ad.waitForDismiss();
      setState(() => _ad = null);
    }
  }

  void _setAdEventListener(InterstitialAd ad) {
    ad.setAdEventListener(
        eventListener: InterstitialAdEventListener(
            onAdFailedToShow: (error) {},
            onAdClicked: () {},
            onAdDismissed: () {},
            onAdImpression: (data) {}));
  }

  Future<InterstitialAdLoader> _createInterstitialAdLoader() {
    return InterstitialAdLoader.create(
      onAdLoaded: (InterstitialAd interstitialAd) {
        setState(() {
          _ad = interstitialAd;
          isLoading = false;
        });
      },
      onAdFailedToLoad: (error) {
        setState(() {
          _ad = null;
          isLoading = false;
        });
      },
    );
  }

  void _updateAdRequestConfiguration(String adUnitId, AdRequest configuration) {
    _adRequestConfiguration = AdRequestConfiguration(
      adUnitId: adUnitId,
      age: configuration.age,
      contextQuery: configuration.contextQuery,
      contextTags: configuration.contextTags,
      gender: configuration.gender,
      location: configuration.location,
      parameters: configuration.parameters,
      preferredTheme: configuration.preferredTheme,
    );
  }

  @override
  Widget build(BuildContext context) {
    if (widget.order.status == "1") {
      isStatusOne = true;
    }
    if (selectedTypeOfPayment != null &&
        selectedDeliveryAddress != null &&
        selectedTypeOfDelivery != null &&
        sum >= selectedMinSum) {
      conditionsReady = true;
    } else {
      conditionsReady = false;
    }
    final colorTheme = AppTheme.of(context).colorTheme;
    _chooseColorAndTextStatus();
    return SingleChildScrollView(
      child: BlocListener<CartBloc, CartState>(
        listener: (context, state) {
          state.maybeMap(
              changed: (response) {
                if (response.response.result) {
                  print("changed ${widget.order.id}");
                  BlocProvider.of<OrdersBloc>(context)
                      .add(OrdersEvent.getOrderById(widget.order.id));
                }
                setState(() {});
              },
              orElse: () {});
        },
        child: Container(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 16),
              InkWell(
                onTap: () => {
                  BlocProvider.of<OrdersBloc>(context)
                      .add(const OrdersEvent.getOrders()),
                  context.router.navigateBack()
                },
                child: Box(
                  child: Assets.images.back.svg(fit: BoxFit.cover),
                ),
              ),
              const SizedBox(height: 12),
              Text(
                "Заявка №${widget.order.id}",
                style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.w700,
                    color: colorTheme.blackText),
              ),
              const SizedBox(height: 12),
              Row(
                children: [
                  StatusWidget(
                      withCount: false, text: statusText, color: selectedColor),
                  const Spacer()
                ],
              ),
              const SizedBox(height: 12),
              Divider(
                height: 25,
                thickness: 1,
                endIndent: 0,
                color: colorTheme.borderGray,
              ),
              BlocBuilder<OrdersBloc, OrdersState>(
                  builder: (context, state) => state.maybeMap(
                        failure: (response) {
                          //context.router.navigateBack();
                          return const SizedBox();
                        },
                        orElse: () {
                          // BlocProvider.of<OrdersBloc>(context)
                          //     .add(OrdersEvent.getOrderById(widget.order.id));
                          return const Center(
                              child: CircularProgressIndicator());
                        },
                        workingOrdersLoaded: (w) {
                          return const SizedBox();
                        },
                        loading: (_) {
                          return const Center(
                              child: CircularProgressIndicator());
                        },
                        deleted: (response) {
                          if (response.response.result) {
                            BlocProvider.of<OrdersBloc>(context)
                                .add(OrdersEvent.getOrderById(widget.order.id));
                          } else {
                            Fluttertoast.showToast(
                                msg: response.response.msg ??
                                    "Ошибка при удалении",
                                toastLength: Toast.LENGTH_LONG,
                                gravity: ToastGravity.BOTTOM,
                                timeInSecForIosWeb: 5,
                                backgroundColor: Colors.grey,
                                textColor: Colors.white,
                                fontSize: 16.0);
                            BlocProvider.of<OrdersBloc>(context)
                                .add(OrdersEvent.getOrderById(widget.order.id));
                          }
                          return const SizedBox();
                        },
                        orderSent: (response) {
                          if (response.response.result) {
                            Fluttertoast.showToast(
                                msg: response.response.msg ?? "Заказ отправлен",
                                toastLength: Toast.LENGTH_LONG,
                                gravity: ToastGravity.BOTTOM,
                                timeInSecForIosWeb: 5,
                                backgroundColor: Colors.grey,
                                textColor: Colors.white,
                                fontSize: 16.0);
                            context.router.push(
                              const MainRoute(),
                            );
                          } else {
                            Fluttertoast.showToast(
                                msg: response.response.msg ??
                                    "Ошибка при заказе",
                                toastLength: Toast.LENGTH_LONG,
                                gravity: ToastGravity.BOTTOM,
                                timeInSecForIosWeb: 1,
                                backgroundColor: Colors.grey,
                                textColor: Colors.white,
                                fontSize: 16.0);
                          }
                          return const SizedBox();
                        },
                        orderLoaded: (response) {
                          _orderProductsList.clear();
                          if (response.response.data.isNotEmpty) {
                            if (response.response.data[0].name_delivery !=
                                null) {
                              selectedTypeOfDelivery = Deliveries(
                                  id: "",
                                  delivery_name:
                                      response.response.data[0].name_delivery!,
                                  price: "");
                            }
                            if (response.response.data[0].name_adres != null) {
                              // selectedDeliveryAddress = DeliveryAddress(
                              //     id: "",
                              //     adres: "response.response.data[0].name_adres!",
                              //     descrip: "",
                              //     city: "");
                            }
                            if (response.response.data[0].name_payment !=
                                null) {
                              selectedTypeOfPayment = TypePrice(
                                  title:
                                      response.response.data[0].name_payment!,
                                  key: 0);
                            }
                            sum = double.parse(
                                response.response.data[0].sum ?? "");
                            skidka = double.parse(
                                response.response.data[0].summa_skidka ??
                                    "0.0");
                            skidkaProcent = double.parse(
                                response.response.data[0].raz_skidka ?? "0.0");
                            if (skidka > 0) {
                              sumSkidka = sum - (sum * skidkaProcent / 100);
                            }
                            _orderProductsList
                                .addAll(response.response.data[0].product);

                            if (selectedTypeOfPayment != null &&
                                selectedDeliveryAddress != null &&
                                selectedTypeOfDelivery != null &&
                                sum >= selectedMinSum) {
                              conditionsReady = true;
                            } else {
                              conditionsReady = false;
                            }

                            return Scrollbar(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  ListView.builder(
                                      primary: false,
                                      shrinkWrap: true,
                                      itemCount: _orderProductsList.length,
                                      itemBuilder:
                                          (BuildContext context, int index) {
                                        return Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: OrderProduct(
                                              changeCallback: () =>
                                                  _onChangeProduct(
                                                      _orderProductsList[
                                                          index]),
                                              deleteCallback: () =>
                                                  _onDeleteProduct(
                                                      _orderProductsList[
                                                          index]),
                                              orderProductInfo:
                                                  _orderProductsList[index],
                                              isStatusOne: isStatusOne,
                                            ));
                                      }),
                                  Row(
                                    children: [
                                      Text(
                                        "Продавец",
                                        style: TextStyle(
                                            fontSize: 17,
                                            fontWeight: FontWeight.w600,
                                            color: colorTheme.blackText),
                                      ),
                                      const Spacer(),
                                      SizedBox(
                                        child: GestureDetector(
                                          onTap: () => {
                                            context
                                                .pushRoute(MainRoute(children: [
                                              CatalogsRoute(children: [
                                                CatalogRoute(
                                                    companyId:
                                                        widget.order.id_user)
                                              ]),
                                            ]))
                                          },
                                          child: Text(
                                            widget.order.name_user ?? "",
                                            style: TextStyle(
                                                decoration:
                                                    TextDecoration.underline,
                                                fontWeight: FontWeight.w500,
                                                fontSize: 13,
                                                color: colorTheme.blueSochi),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 16,
                                  ),
                                  if (selectedTypeOfPayment != null)
                                    Row(
                                      children: [
                                        Text(
                                          "Оплата",
                                          style: TextStyle(
                                              fontSize: 17,
                                              fontWeight: FontWeight.w600,
                                              color: colorTheme.blackText),
                                        ),
                                        const Spacer(),
                                        Text(
                                          selectedTypeOfPayment!.title,
                                          style: TextStyle(
                                              fontWeight: FontWeight.w500,
                                              fontSize: 13,
                                              color:
                                                  colorTheme.greyBarBottomText),
                                        ),
                                      ],
                                    ),
                                  const SizedBox(
                                    height: 16,
                                  ),
                                  if (selectedDeliveryAddress != null)
                                    Row(
                                      children: [
                                        Text(
                                          "Адрес",
                                          style: TextStyle(
                                              fontSize: 17,
                                              fontWeight: FontWeight.w600,
                                              color: colorTheme.blackText),
                                        ),
                                        const Spacer(),
                                        Container(
                                          child: Text(
                                            maxLines: 1,
                                            overflow: TextOverflow.ellipsis,
                                            selectedDeliveryAddress!.title,
                                            style: TextStyle(
                                                fontWeight: FontWeight.w500,
                                                fontSize: 13,
                                                color: colorTheme
                                                    .greyBarBottomText),
                                          ),
                                        ),
                                      ],
                                    ),
                                  const SizedBox(
                                    height: 16,
                                  ),
                                  if (selectedTypeOfDelivery != null)
                                    Row(
                                      children: [
                                        Text(
                                          "Доставка",
                                          style: TextStyle(
                                              fontSize: 17,
                                              fontWeight: FontWeight.w600,
                                              color: colorTheme.blackText),
                                        ),
                                        const Spacer(),
                                        Text(
                                          "${selectedTypeOfDelivery!.delivery_name} "
                                          "от ${selectedTypeOfDelivery!.price} "
                                          "рублей",
                                          style: TextStyle(
                                              fontWeight: FontWeight.w500,
                                              fontSize: 13,
                                              color:
                                                  colorTheme.greyBarBottomText),
                                        ),
                                      ],
                                    ),
                                  Divider(
                                    height: 25,
                                    thickness: 1,
                                    endIndent: 0,
                                    color: colorTheme.borderGray,
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        "Итого",
                                        style: TextStyle(
                                            fontSize: 22,
                                            fontWeight: FontWeight.w700,
                                            color: colorTheme.blackText),
                                      ),
                                      const Spacer(),
                                      SizedBox(
                                        width: 250,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.end,
                                          children: [
                                            Text(
                                              "${_orderProductsList.length} ${widget.order.naimenov}",
                                              textAlign: TextAlign.right,
                                              maxLines: 2,
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 13,
                                                  color: colorTheme
                                                      .greyBarBottomText),
                                            ),
                                            Text(
                                              "на общую сумму $sum ₽",
                                              maxLines: 2,
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 13,
                                                  color: colorTheme
                                                      .greyBarBottomText),
                                            ),
                                            if (widget.order.summa_skidka !=
                                                    null &&
                                                sum > skidka)
                                              Text(
                                                "Так как общая сумма превышает ${widget.order.summa_skidka} руб. вам положена скидка в размере ${widget.order.raz_skidka}%. Общая сумма будет $sumSkidka ₽",
                                                maxLines: 4,
                                                style: TextStyle(
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: 13,
                                                    color: colorTheme
                                                        .greyBarBottomText),
                                              ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 16,
                                  ),
                                  if (selectedMinSum != 0 &&
                                      selectedMinSum > sum)
                                    Text(
                                      "Минимальный заказ от $selectedMinSum ₽, не хватает: ${selectedMinSum - sum} ₽",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 12,
                                          color: colorTheme.redText),
                                    ),
                                  Divider(
                                    height: 25,
                                    thickness: 1,
                                    endIndent: 0,
                                    color: colorTheme.borderGray,
                                  ),
                                  if (widget.order.status == "1")
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        ConditionsButton(
                                          onConditions: () => _inConditions(),
                                        ),
                                        const SizedBox(height: 8),
                                        if (conditionsReady)
                                          SendButton(
                                              color: colorTheme.primary,
                                              onCartSend: _onCartSend),
                                        if (!conditionsReady)
                                          SendButton(
                                              color: colorTheme.borderGray),
                                      ],
                                    ),
                                  const SizedBox(height: 32),
                                  Box(
                                    width: double.infinity,
                                    child: ElevatedButton(
                                      onPressed: () => {
                                        context.pushRoute(
                                            const MainRoute(children: [
                                          CatalogsRoute(),
                                        ]))
                                      },
                                      style: ElevatedButton.styleFrom(
                                          elevation: 0,
                                          backgroundColor: colorTheme.primary,
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(16),
                                          ),
                                          padding: const EdgeInsets.symmetric(
                                              vertical: 16),
                                          textStyle: const TextStyle(
                                              fontSize: 17,
                                              fontWeight: FontWeight.bold)),
                                      child: const Text("В каталог"),
                                    ),
                                  )
                                ],
                              ),
                            );
                          } else {
                            BlocProvider.of<OrdersBloc>(context)
                                .add(const OrdersEvent.getOrders());
                            context.router.navigateBack();
                            return const SizedBox();
                          }
                        },
                      ))
            ],
          ),
        ),
      ),
    );
  }

  void _chooseColorAndTextStatus() {
    final colorTheme = AppTheme.of(context).colorTheme;
    switch (widget.order.status) {
      case "1":
        selectedColor = colorTheme.blueSochi;
        statusText = widget.order.statuss.type_1;
        break;
      case "2":
        selectedColor = colorTheme.greenText;
        statusText = widget.order.statuss.type_2;
        break;
      case "3":
        selectedColor = colorTheme.orange;
        statusText = widget.order.statuss.type_3;
        break;
      case "4":
        selectedColor = colorTheme.redText;
        statusText = widget.order.statuss.type_4;
        break;
    }
  }

  void _onDeleteProduct(OrderProducts products) {
    Widget cancelButton = TextButton(
      child: const Text("Отмена"),
      onPressed: () {
        Navigator.of(context, rootNavigator: true).pop(context);
      },
    );
    Widget continueButton = TextButton(
      child: const Text("Удалить"),
      onPressed: () {
        BlocProvider.of<OrdersBloc>(context).add(
            OrdersEvent.deleteProductFromOrder(
                products.id_product, widget.order.id));
        Navigator.of(context, rootNavigator: true).pop(context);
      },
    );

    AlertDialog alert = AlertDialog(
      title: const Text("Удалить продукт"),
      content: const Text("Вы уверены, что хотите удалить продукт из заявки?"),
      actions: [
        cancelButton,
        continueButton,
      ],
    );

    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }

  void _onChangeProduct(OrderProducts orderProductInfo) {
    InCartDialog.changeCart(orderProductInfo, context);
  }

  void _inConditions() {
    BlocProvider.of<ConditionsBloc>(context)
        .add(ConditionsEvent.getConditions(widget.order.id_user ?? ""));
    List<TypePrice> typesOfPayment = <TypePrice>[];
    List<Deliveries> deliveries = <Deliveries>[];
    List<DeliveryAddress> deliveryAddresses = <DeliveryAddress>[];
    TypePrice typeOfPayment = TypePrice(title: "", key: 99999);
    Deliveries typeOfDelivery =
        Deliveries(id: "", delivery_name: "", price: "");
    DeliveryAddress deliveryAddress;
    final colorTheme = AppTheme.of(context).colorTheme;
    showModalBottomSheet(
        isScrollControlled: true,
        useRootNavigator: true,
        context: context,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(24), topLeft: Radius.circular(24))),
        builder: (context) {
          return BlocBuilder<ConditionsBloc, ConditionsState>(
              builder: (context, state) => state.maybeMap(
                    orElse: () {
                      return const Center(child: CircularProgressIndicator());
                    },
                    loading: (_) {
                      return const Center(child: CircularProgressIndicator());
                    },
                    loaded: (response) {
                      print(response.response.deliveries);
                      print(response.response.adres);
                      typesOfPayment.clear();
                      typesOfPayment.addAll(response.response.type_price);
                      deliveries = <Deliveries>[];
                      deliveries.addAll(response.response.deliveries);
                      deliveryAddresses = <DeliveryAddress>[];
                      deliveryAddresses.addAll(response.response.adres);
                      print("DSDSDWDWDW ${deliveryAddresses.length}");
                      deliveryAddress = response.response.adres[0];
                      return SingleChildScrollView(
                        child: Container(
                          padding: EdgeInsets.only(
                              bottom: MediaQuery.of(context).viewInsets.bottom),
                          child: StatefulBuilder(builder: (BuildContext context,
                              void Function(void Function()) setModalState) {
                            return Container(
                              padding: const EdgeInsets.all(16),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Center(
                                      child: Assets.images.dialogHeader.svg()),
                                  const SizedBox(height: 16),
                                  Text(
                                    "Условия оплаты и доставки",
                                    style: TextStyle(
                                        fontSize: 22,
                                        fontWeight: FontWeight.w700,
                                        color: colorTheme.blackText),
                                  ),
                                  Divider(
                                    height: 25,
                                    thickness: 1,
                                    endIndent: 0,
                                    color: colorTheme.borderGray,
                                  ),
                                  Container(
                                    padding: const EdgeInsetsDirectional.all(8),
                                    decoration: BoxDecoration(
                                        borderRadius: const BorderRadius.all(
                                            Radius.circular(16)),
                                        color: colorTheme.dividerGray),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Способ оплаты",
                                          style: TextStyle(
                                              fontSize: 17,
                                              fontWeight: FontWeight.w600,
                                              color: colorTheme.blackText),
                                        ),
                                        const SizedBox(
                                          height: 26,
                                        ),
                                        for (var i = 0;
                                            i < typesOfPayment.length;
                                            i++)
                                          ListTile(
                                            trailing: Radio<TypePrice>(
                                              value: typesOfPayment[i],
                                              groupValue: typeOfPayment,
                                              onChanged: (TypePrice? value) {
                                                setModalState(() {
                                                  typeOfPayment =
                                                      typesOfPayment[i];
                                                });
                                              },
                                            ),
                                            leading:
                                                Text(typesOfPayment[i].title),
                                          ),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 24,
                                  ),
                                  Container(
                                    padding: const EdgeInsetsDirectional.all(8),
                                    decoration: BoxDecoration(
                                        borderRadius: const BorderRadius.all(
                                            Radius.circular(16)),
                                        color: colorTheme.dividerGray),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Адрес доставки",
                                          style: TextStyle(
                                              fontSize: 17,
                                              fontWeight: FontWeight.w600,
                                              color: colorTheme.blackText),
                                        ),
                                        const SizedBox(
                                          height: 26,
                                        ),
                                        for (var i = 0;
                                            i < deliveryAddresses.length;
                                            i++)
                                          ListTile(
                                              trailing: Radio<DeliveryAddress>(
                                                value: deliveryAddresses[i],
                                                groupValue: deliveryAddress,
                                                onChanged:
                                                    (DeliveryAddress? value) {
                                                  setModalState(() {
                                                    deliveryAddress =
                                                        deliveryAddresses[i];
                                                  });
                                                },
                                              ),
                                              leading: SizedBox(
                                                width: 250,
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      deliveryAddresses[i].city,
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          fontWeight:
                                                              FontWeight.w400,
                                                          color: colorTheme
                                                              .blackText),
                                                    ),
                                                    Text(
                                                      deliveryAddresses[i]
                                                          .title,
                                                      maxLines: 1,
                                                      style: TextStyle(
                                                          overflow:
                                                              TextOverflow.fade,
                                                          fontSize: 17,
                                                          fontWeight:
                                                              FontWeight.w400,
                                                          color: colorTheme
                                                              .greyText),
                                                    ),
                                                  ],
                                                ),
                                              )),
                                        if (deliveryAddresses.length < 5)
                                          ListTile(
                                            onTap: () => {
                                              Navigator.pop(context),
                                              print(1),
                                              context.router.navigate(
                                                  const ProfileRoute())
                                            },
                                            trailing: Box(
                                              child: Assets
                                                  .images.orders.rightArrow
                                                  .svg(),
                                            ),
                                            leading: SizedBox(
                                              width: 180,
                                              child: Text(
                                                "Добавить новый адрес",
                                                style: TextStyle(
                                                    fontSize: 17,
                                                    fontWeight: FontWeight.w400,
                                                    color:
                                                        colorTheme.blackText),
                                              ),
                                            ),
                                          ),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 24,
                                  ),
                                  Container(
                                    padding: const EdgeInsetsDirectional.all(8),
                                    decoration: BoxDecoration(
                                        borderRadius: const BorderRadius.all(
                                            Radius.circular(16)),
                                        color: colorTheme.dividerGray),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Способ доставки",
                                          style: TextStyle(
                                              fontSize: 17,
                                              fontWeight: FontWeight.w600,
                                              color: colorTheme.blackText),
                                        ),
                                        const SizedBox(
                                          height: 26,
                                        ),
                                        for (var i = 0;
                                            i < deliveries.length;
                                            i++)
                                          ListTile(
                                            trailing: Radio<Deliveries>(
                                              value: deliveries[i],
                                              groupValue: typeOfDelivery,
                                              onChanged: (Deliveries? value) {
                                                setModalState(() {
                                                  typeOfDelivery =
                                                      deliveries[i];
                                                });
                                              },
                                            ),
                                            leading: Text(
                                                "${deliveries[i].delivery_name} от ${deliveries[i].price} рублей"),
                                          ),
                                      ],
                                    ),
                                  ),
                                  Box(
                                    width: double.infinity,
                                    padding: const Pad(horizontal: 16),
                                    child: ElevatedButton(
                                      onPressed: () => {
                                        setState(() {
                                          if (typeOfDelivery.id != "") {
                                            selectedTypeOfDelivery =
                                                typeOfDelivery;
                                            selectedMinSum =
                                                int.parse(typeOfDelivery.price);
                                          }
                                          selectedDeliveryAddress =
                                              deliveryAddress;
                                          if (typeOfPayment.title != "") {
                                            selectedTypeOfPayment =
                                                typeOfPayment;
                                          }
                                        }),
                                        Navigator.pop(context)
                                      },
                                      style: ElevatedButton.styleFrom(
                                          elevation: 0,
                                          backgroundColor: colorTheme.primary,
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(16),
                                          ),
                                          padding: const EdgeInsets.symmetric(
                                              vertical: 16),
                                          textStyle: const TextStyle(
                                              fontSize: 17,
                                              fontWeight: FontWeight.bold)),
                                      child: const Text("Сохранить"),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 8,
                                  )
                                ],
                              ),
                            );
                          }),
                        ),
                      );
                    },
                  ));
        });
  }

  void _onCartSend() async {
    print(
        "Cart SEND  ${widget.order.id} ${selectedDeliveryAddress!.id!} ${selectedTypeOfDelivery!.id} ${selectedTypeOfPayment!.key}");

    if (_ad != null) {
      await showInterstitialAd();
    } else {
      await _loadInterstitialAd();
    }
    BlocProvider.of<OrdersBloc>(context).add(OrdersEvent.cartSendOrder(
        widget.order.id,
        selectedDeliveryAddress!.id!,
        selectedTypeOfDelivery!.id,
        selectedTypeOfPayment!.key.toString()));
  }
}
