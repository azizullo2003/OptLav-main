

import 'package:assorted_layout_widgets/assorted_layout_widgets.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:optlove/presentation/orders/data/models/order_info.dart';
import 'package:optlove/presentation/orders/data/models/statuses.dart';
import 'package:optlove/presentation/orders/view/bloc/orders_bloc.dart';
import 'package:optlove/presentation/orders/view/widgets/order_widget.dart';
import 'package:optlove/presentation/orders/view/widgets/status_widget.dart';

import '../../../app/routes/router.gr.dart';
import '../../../app/theme/bloc/app_theme.dart';
import '../../../app/utils/shared_preferences_helper.dart';
import '../../../core/static_text.dart';
import '../../../generated/assets.gen.dart';
import '../../sendactivity/bloc/sendactivity_bloc.dart';
import '../data/models/deliveries.dart';
import '../data/models/type_price.dart';
import 'bloc/conditions_bloc.dart';

class OrdersPage extends StatefulWidget {
  const OrdersPage({Key? key}) : super(key: key);

  @override
  State<OrdersPage> createState() => _OrdersPageState();
}

class _OrdersPageState extends State<OrdersPage> {
  Statuses? statuses;
  bool _secondTap = false;
  bool _isAddressExist = true;
  bool _statusOneVis = true;
  bool _statusTwoVis = true;
  bool _statusThreeVis = true;
  bool _statusFourVis = true;

  final List<OrderInfo> _orderInfoList = <OrderInfo>[];
  @override
  Widget build(BuildContext context) {

    final colorTheme = AppTheme.of(context).colorTheme;
    if (_isAddressExist) {
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
                "Ваши заявки",
                style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.w700,
                    color: colorTheme.blackText),
              ),
              const SizedBox(height: 12),
              Divider(
                height: 25,
                thickness: 1,
                endIndent: 0,
                color: colorTheme.borderGray,
              ),
              Row(
                children: [
                  (() {
                    if (statuses != null) {
                      if (statuses!.count_1 != "0" &&
                          statuses!.count_1 != null) {
                        return GestureDetector(
                          onTap: () => {
                          BlocProvider.of<OrdersBloc>(context).add(const OrdersEvent.getOrdersByStatus("1")),
                            if(!_secondTap){
                              _statusOneVis = true,
                              _statusTwoVis = false,
                              _statusThreeVis = false,
                              _statusFourVis = false,
                              _secondTap = true
                            } else {
                              _allStatuses(),
                              _secondTap = false
                            },
                            setState(() {

                            })
                          },
                          child: Visibility(
                            visible: _statusOneVis,
                            child: StatusWidget(
                                withCount: true,
                                text: statuses!.type_1,
                                color: colorTheme.blueSochi,
                                count: statuses!.count_1),
                          ),
                        );
                      }
                    }
                    return const SizedBox();
                  }()),
                  const SizedBox(
                    width: 8,
                  ),
                  (() {
                    if (statuses != null) {
                      if (statuses!.count_2 != "0" &&
                          statuses!.count_2 != null) {
                        return GestureDetector(
                            onTap: () => {
                              BlocProvider.of<OrdersBloc>(context).add(const OrdersEvent.getOrdersByStatus("2")),
                              if(!_secondTap){
                                _statusOneVis = false,
                                _statusTwoVis = true,
                                _statusThreeVis = false,
                                _statusFourVis = false,
                                _secondTap = true
                              } else {
                                _allStatuses(),
                                _secondTap = false
                              },
                              setState(() {

                              })
                            },
                          child: Visibility(
                            visible: _statusTwoVis,
                            child: StatusWidget(
                                withCount: true,
                                text: statuses!.type_2,
                                color: colorTheme.greenText,
                                count: statuses!.count_2),
                          ),
                        );
                      }
                    }
                    return const SizedBox();
                  }()),
                ],
              ),
              const SizedBox(
                height: 8,
              ),
              Row(
                children: [
                  (() {
                    if (statuses != null) {
                      if (statuses!.count_3 != "0" &&
                          statuses!.count_3 != null) {
                        return GestureDetector(
                          onTap: () => {
                            BlocProvider.of<OrdersBloc>(context).add(const OrdersEvent.getOrdersByStatus("3")),
                            if(!_secondTap){
                              _statusOneVis = false,
                              _statusTwoVis = false,
                              _statusThreeVis = true,
                              _statusFourVis = false,
                              _secondTap = true
                            } else {
                              _allStatuses(),
                              _secondTap = false
                            },
                            setState(() {

                            })
                          },
                          child: Visibility(
                            visible: _statusThreeVis,
                            child: StatusWidget(
                                withCount: true,
                                text: statuses!.type_3,
                                color: colorTheme.orange,
                                count: statuses!.count_3),
                          ),
                        );
                      }
                    }
                    return const SizedBox();
                  }()),
                  const SizedBox(width: 8),
                  (() {
                    if (statuses != null) {
                      if (statuses!.count_4 != "0" &&
                          statuses!.count_4 != null) {
                        return GestureDetector(
                          onTap: () => {
                            BlocProvider.of<OrdersBloc>(context).add(const OrdersEvent.getOrdersByStatus("4")),
                            if(!_secondTap){
                              _statusOneVis = false,
                              _statusTwoVis = false,
                              _statusThreeVis = false,
                              _statusFourVis = true,
                              _secondTap = true
                            } else {
                              _allStatuses(),
                              _secondTap = false
                            },
                            setState(() {

                            })
                          },
                          child: Visibility(
                            visible: _statusFourVis,
                            child: StatusWidget(
                                withCount: true,
                                text: statuses!.type_4,
                                color: colorTheme.redText,
                                count: statuses!.count_4),
                          ),
                        );
                      }
                    }
                    return const SizedBox();
                  }()),
                ],
              ),
              const SizedBox(
                height: 24,
              ),
              BlocConsumer<OrdersBloc, OrdersState>(
                  listener: (context, state) {
                    state.maybeMap(
                        loaded: (response) {
                          WidgetsBinding.instance
                              .addPostFrameCallback((_) => setState(() {
                                    statuses = response.response.statuses;
                                  }));

                          _orderInfoList.clear();
                          _orderInfoList.addAll(response.response.data);
                          print("loading data");
                          print(response.response.data);
                          response.response.data.forEach((element) {print(element);});
                        },
                        orElse: () {});
                  },
                  builder: (context, state) => state.maybeMap(
                    workingOrdersLoaded: (w){
                      return const SizedBox();
                    },
                        orElse: () {
                          return const SizedBox();
                        },
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
                              BlocProvider.of<OrdersBloc>(context).add(const OrdersEvent.getOrders())},
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
                          return const Center(
                              child: CircularProgressIndicator());
                        },
                        loaded: (response) {
                          if (response.response.result) {
                            if (_orderInfoList.isNotEmpty) {
                              return Scrollbar(
                                child: ListView.builder(
                                    primary: false,
                                    shrinkWrap: true,
                                    itemCount: _orderInfoList.length,
                                    itemBuilder:
                                        (BuildContext context, int index) {
                                      return Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: OrderWidget(
                                              onConditions: () =>
                                                  _inConditions(
                                                      _orderInfoList[index]),
                                              onOrderInfo: () =>
                                                  _onProducts(
                                                      context,
                                                      _orderInfoList[index]),
                                              orderInfo: _orderInfoList[index]));
                                    }),
                              );
                            } else {
                              return Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Ваша корзина пуста и в ней нет заявок, вернитесь в каталог и выберите товар",
                                    style: TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.w400,
                                        color: colorTheme.greyText),
                                  ),
                                  const SizedBox(
                                    height: 200,
                                  ),
                                  Box(
                                    width: double.infinity,
                                    child: ElevatedButton(
                                      onPressed: () =>
                                      {
                                        context.router
                                            .navigate(const CatalogsRoute())
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
                                      child: const Text("В каталог"),
                                    ),
                                  )
                                ],
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
                                      BlocProvider.of<OrdersBloc>(context).add(const OrdersEvent.getOrders())},
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
                      ))
            ],
          ),
        ),
      );
    } else {
      _onEmptyAddress();
      return const SizedBox();
    }
  }

  @override
  void initState() {
    _isAddressNotEmpty();
    BlocProvider.of<OrdersBloc>(context).add(const OrdersEvent.getOrders());
    BlocProvider.of<SendActivityBloc>(context)
        .add(const SendActivityEvent.sendActivity(screenName: "Экран заявок"));
    super.initState();
  }

  void _onProducts(BuildContext context, OrderInfo order) {
    context.router.push(
      OrdersProductsRoute(order: order),
    );
  }

  void _inConditions(OrderInfo order) {
    BlocProvider.of<ConditionsBloc>(context)
        .add(ConditionsEvent.getConditions(order.id_user?? ""));
    List<TypePrice> typesOfPayment = <TypePrice>[];
    List<Deliveries> deliveries = <Deliveries>[];
    TypePrice typeOfPayment;
    Deliveries typeOfDelivery;
    String city = "Москва";
    String address = "Пр. Мира, 17 а, оф. 1";
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
                      typesOfPayment.clear();
                      typesOfPayment.addAll(response.response.type_price);
                      typeOfPayment = response.response.type_price[0];
                      deliveries.addAll(response.response.deliveries);
                      typeOfDelivery = response.response.deliveries[0];
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
                                        ListTile(
                                            trailing: Radio<String>(
                                              value: address,
                                              groupValue: address,
                                              onChanged: (String? value) {
                                                setModalState(() {
                                                  address = address;
                                                });
                                              },
                                            ),
                                            leading: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  city,
                                                  style: TextStyle(
                                                      fontSize: 17,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      color:
                                                          colorTheme.blackText),
                                                ),
                                                Text(
                                                  address,
                                                  style: TextStyle(
                                                      fontSize: 13,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      color:
                                                          colorTheme.greyText),
                                                ),
                                              ],
                                            )),
                                        ListTile(
                                          onTap: () => {
                                            Navigator.pop(context),
                                            context.router
                                                .navigate(const ProfileRoute())
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
                                                  color: colorTheme.blackText),
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
                                                deliveries[i].delivery_name),
                                          ),
                                      ],
                                    ),
                                  ),
                                  Box(
                                    width: double.infinity,
                                    padding: const Pad(horizontal: 16),
                                    child: ElevatedButton(
                                      onPressed: () => {Navigator.pop(context)},
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

  void _isAddressNotEmpty() async {
    _isAddressExist = (await SharedPrefsHelper.isAddressExist())?? false;
    setState(() {

    });
    print("_isAddressNotEmpty Async $_isAddressExist");
  }

  void _allStatuses()  {
    BlocProvider.of<OrdersBloc>(context).add(const OrdersEvent.getOrders());
    _statusOneVis = true;
    _statusTwoVis = true;
    _statusThreeVis = true;
    _statusFourVis = true;
    setState(() {

    });
  }

  void _onEmptyAddress() {
    Widget cancelButton = TextButton(
      child: const Text("Позже"),
      onPressed: () {
        Navigator.of(context, rootNavigator: true).pop(context);
        context.router.push(
          const MainRoute(),
        );
        dispose();
      },
    );
    Widget continueButton = TextButton(
      child: const Text("В профиль"),
      onPressed: () {
        Navigator.of(context, rootNavigator: true).pop(context);
        context.router
            .navigate(const ProfileRoute());
      },
    );

    AlertDialog alert =  AlertDialog(
      //title: const Text("Нету адреса"),
      content:
           Text(StaticText.first),
      actions: [
        cancelButton,
        continueButton,
      ],
    );

    // show the dialog
    if(!_isAddressExist) {
      WidgetsBinding.instance.addPostFrameCallback((_) => showDialog(
          barrierDismissible: false,
          context: context,
          builder: (BuildContext context) {
            return alert;
          },
        ));
    }
  }
}
