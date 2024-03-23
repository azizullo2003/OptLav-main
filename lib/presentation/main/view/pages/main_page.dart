import 'package:assorted_layout_widgets/assorted_layout_widgets.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:optlove/app/routes/router.gr.dart';
import 'package:optlove/presentation/cart/view/bloc/cart_bloc.dart';
import 'package:optlove/presentation/main/view/bloc/user_exist_bloc.dart';
import 'package:optlove/presentation/orders/view/bloc/orders_bloc.dart';
import 'package:yandex_mobileads/mobile_ads.dart';

import '../../../../app/routes/route_observer.dart';
import '../../../../app/theme/bloc/app_theme.dart';
import '../../../../app/theme/models/app_color_theme.dart';
import '../../../../app/utils/shared_preferences_helper.dart';
import '../../../../generated/assets.gen.dart';
import '../../../profile/view/bloc/user_bloc.dart';
import '../../../../core/constants.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();

  static doSomething() {
    _MainPageState.doSomething();
  }
}

class _MainPageState extends State<MainPage> with AutoRouteAware {
  AutoRouteObserver? _observer;
  int currentIndex = 2;
  var isHomePage = true;
  var costumerName = "Я покупатель";
  var costumerInn = "";
  String countOfCart = "0";

  final refreshNotifier = ValueNotifier<int?>(null);

  BannerAd? _bannerAd;

  @override
  void initState() {
    print("initStateMainPages");
    BlocProvider.of<UserBloc>(context).add(const UserEvent.getUserData());
    BlocProvider.of<OrdersBloc>(context).add(const OrdersEvent.getOrders());
    BlocProvider.of<UserExistBloc>(context)
        .add(const UserExistEvent.getUserExist());
    refreshNotifier.addListener(() {
      if (refreshNotifier.value == 4) {
        context.router.replace(
          CatalogRoute(),
        );
      }
      if (refreshNotifier.value == 0) {
        context.router.replace(
          const ProfileRoute(),
        );
      }
      if (refreshNotifier.value == 1) {
        context.router.replace(
          const OrdersRoute(),
        );
      }
      if (refreshNotifier.value == 2) {
        context.router.replace(
          const HomeRoute(),
        );
      }
      if (refreshNotifier.value == 3) {
        context.router.replace(
          const FavoriteRoute(),
        );
      }
    });

    _showAd(true);

    super.initState();
  }

  @override
  void dispose() {
    _observer?.unsubscribe(this);

    super.dispose();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _observer =
        RouterScope.of(context).firstObserverOfType<AutoRouteObserver>();
    if (_observer != null) {
      _observer?.subscribe(this, context.routeData);
    }
  }

  void _onItemTapped(TabsRouter router, int index) {
    BlocProvider.of<UserExistBloc>(context)
        .add(const UserExistEvent.getUserExist());

    setState(() {
      router.setActiveIndex(index);
      if (index != 2) {
        isHomePage = false;
      } else {
        isHomePage = true;
      }
    });

    _showAd(false);
  }

  static doSomething() {
    print("object");
  }

  _showAd(bool isInitLoad) async {
    int adWidth =
        (MediaQueryData.fromView(WidgetsBinding.instance.window).size.width)
            .toInt();
    var adSize = AdSize.inline(width: adWidth, maxHeight: 60);

    if (!isInitLoad) {
      setState(() {
        _bannerAd = null;
      });
    }

    Future.delayed(const Duration(milliseconds: 200)).then((value) {
      setState(() {
        _bannerAd = BannerAd(
          adUnitId: getYandexBannerID(),
          adSize: adSize,
          adRequest: const AdRequest(),
          onAdLoaded: () {},
          onAdFailedToLoad: (error) {},
        );
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    setNameAndInn();
    final colorTheme = AppTheme.of(context).colorTheme;
    return MultiBlocListener(
      listeners: [
        BlocListener<UserBloc, UserState>(
          listener: (context, state) {
            state.maybeMap(
                failure: (e) {},
                loaded: (response) {
                  if (response.response.locations[0].adres != null) {
                    SharedPrefsHelper.setAddressExist(true);
                  } else {
                    SharedPrefsHelper.setAddressExist(false);
                  }
                },
                orElse: () {});
          },
        ),
        BlocListener<UserExistBloc, UserExistState>(
          listener: (context, state) {
            state.maybeMap(
                isUserExist: (response) {
                  if (!response.response.result) {
                    Fluttertoast.showToast(
                        msg: response.response.msg ??
                            "Пользователь не найден, либо удален за нарушения",
                        toastLength: Toast.LENGTH_LONG,
                        gravity: ToastGravity.BOTTOM,
                        timeInSecForIosWeb: 1,
                        backgroundColor: Colors.grey,
                        textColor: Colors.white,
                        fontSize: 16.0);
                    _onExit(context);
                    context.router.navigate(const RegistrationBegin());
                  }
                },
                orElse: () {});
          },
        ),
        BlocListener<OrdersBloc, OrdersState>(
          listener: (context, state) {
            state.maybeMap(
                loaded: (response) {
                  WidgetsBinding.instance.addPostFrameCallback((_) {
                    setState(() {
                      countOfCart = response.response.global_count ?? "0";
                    });
                  });
                },
                orElse: () {});
          },
        ),
        BlocListener<CartBloc, CartState>(
          listener: (context, state) {
            state.maybeMap(
                loaded: (response) {
                  WidgetsBinding.instance.addPostFrameCallback((_) {
                    setState(() {
                      if (response.response.result) {
                        BlocProvider.of<OrdersBloc>(context)
                            .add(const OrdersEvent.getOrders());
                      }
                    });
                  });
                },
                orElse: () {});
          },
        ),
      ],
      child: Container(
        color: Colors.white,
        child: SafeArea(
            top: false,
            child: Column(
              children: [
                Expanded(
                  child: AutoTabsScaffold(
                      lazyLoad: true,
                      animationDuration: const Duration(milliseconds: 0),
                      homeIndex: 2,
                      navigatorObservers: () => [MyObserver(context)],
                      backgroundColor: Colors.white,
                      appBarBuilder: (_, tabsRouter) => isHomePage
                          ? mainAppBar(
                              colorTheme,
                              costumerName,
                              costumerInn,
                              countOfCart.toString(),
                              () => _onItemTapped(tabsRouter, 0),
                              () => _onItemTapped(tabsRouter, 1))
                          : shortAppBar(
                              colorTheme,
                              costumerName,
                              costumerInn,
                              countOfCart.toString(),
                              () => _onItemTapped(tabsRouter, 1)),
                      routes: const [
                        ProfileRoute(),
                        OrdersPageRoute(),
                        HomePageRoute(),
                        FavoriteRoute(),
                        CatalogsRoute(),
                      ],
                      bottomNavigationBuilder: (_, tabsRouter) {
                        return BottomNavigationBar(
                          backgroundColor: Colors.white,
                          type: BottomNavigationBarType.fixed,
                          currentIndex: tabsRouter.activeIndex,
                          showUnselectedLabels: false,
                          elevation: 0,
                          onTap: (index) {
                            if (index == tabsRouter.activeIndex) {
                              refreshNotifier.value = index;
                            } else {
                              _onItemTapped(tabsRouter, index);
                            }
                          },
                          showSelectedLabels: false,
                          unselectedLabelStyle: const TextStyle(fontSize: 10),
                          selectedLabelStyle: const TextStyle(
                            fontSize: 10,
                          ),
                          unselectedItemColor: colorTheme.greyBarBottomText,
                          selectedItemColor: colorTheme.greenBarBottomText,
                          items: <BottomNavigationBarItem>[
                            BottomNavigationBarItem(
                                activeIcon: Assets.images.bottomNav.profileact
                                    .svg(fit: BoxFit.cover),
                                icon: Assets.images.bottomNav.profile
                                    .svg(fit: BoxFit.cover),
                                label: "Профиль"),
                            BottomNavigationBarItem(
                                activeIcon: Assets.images.bottomNav.zayavkiact
                                    .svg(fit: BoxFit.cover),
                                icon: Assets.images.bottomNav.zayavki
                                    .svg(fit: BoxFit.cover),
                                label: "Заявка"),
                            BottomNavigationBarItem(
                                activeIcon: Assets.images.bottomNav.homeact
                                    .svg(fit: BoxFit.cover),
                                icon: Assets.images.bottomNav.home
                                    .svg(fit: BoxFit.cover),
                                label: "Главная"),
                            BottomNavigationBarItem(
                                activeIcon: Assets.images.bottomNav.favoriteact
                                    .svg(fit: BoxFit.cover),
                                icon: Assets.images.bottomNav.favorite
                                    .svg(fit: BoxFit.cover),
                                label: "Избранное"),
                            BottomNavigationBarItem(
                                activeIcon: Assets.images.bottomNav.catalogact
                                    .svg(fit: BoxFit.cover),
                                icon: Assets.images.bottomNav.catalog
                                    .svg(fit: BoxFit.cover),
                                label: "Каталог"),
                          ],
                        );
                      }),
                ),
                Container(
                  color: Colors.white,
                  child: Center(
                      child: _bannerAd != null
                          ? _bannerAd != null
                              ? AdWidget(bannerAd: _bannerAd!)
                              : const SizedBox()
                          : const SizedBox()),
                )
              ],
            )),
      ),
    );
  }

  @override
  void didInitTabRoute(TabPageRoute? previousRoute) {
    print("didInitTabRoute ${previousRoute!.name}");
  }

  // only override if this is a tab page
  @override
  void didChangeTabRoute(TabPageRoute previousRoute) {
    print("didChangeTabRoute ${previousRoute.name}");
  }

  @override
  void didPushNext() {
    print("didPushNext $currentIndex");
  }

  @override
  void didPush() {
    print("didPush $currentIndex");
  }

  @override
  void didPop() {
    print("didPop ");
  }

  @override
  void didPopNext() {
    print("didPopNext ");
  }

  void _setStateForHeader() {
    setState(() {
      print("_setStateForHeader");
    });
  }

  void setNameAndInn() async {
    costumerName = await SharedPrefsHelper.getName() ?? "Я Покупатель";
    costumerInn = await SharedPrefsHelper.getInn() ?? "";
  }
}

void _onExit(BuildContext context) async {
  await SharedPrefsHelper.rememberMe(false);
}

PreferredSizeWidget mainAppBar(AppColorTheme colorTheme, String name,
    String inn, String count, VoidCallback onProfile, VoidCallback onCart) {
  return AppBar(
    surfaceTintColor: Colors.transparent,
    automaticallyImplyLeading: false,
    toolbarHeight: 120,
    shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
      bottomRight: Radius.circular(40.0),
    )),
    backgroundColor: colorTheme.appBarGreen,
    shadowColor: Colors.white,
    elevation: 0,
    title: Container(
      padding: const EdgeInsets.only(top: 16, bottom: 16),
      decoration: BoxDecoration(
          borderRadius:
              const BorderRadius.only(bottomRight: Radius.circular(40.0)),
          color: colorTheme.appBarGreen),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Box(
            padding: const Pad(right: 8),
            child: Assets.images.main.avatar.image(fit: BoxFit.cover),
          ),
          const SizedBox(width: 16),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 10),
              SizedBox(
                width: 160,
                child: Text(
                  name,
                  maxLines: 2,
                  style: const TextStyle(
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                      fontSize: 15),
                ),
              ),
              const SizedBox(height: 5),
              Text(
                "ИНН: $inn",
                style: const TextStyle(
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                    fontSize: 11),
              ),
              const SizedBox(height: 10),
              GestureDetector(
                onTap: onProfile,
                child: Text(
                  "Изменить данные",
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      color: colorTheme.appBarGreyText,
                      fontSize: 15),
                ),
              ),
            ],
          ),
          const Spacer(),
          if (count != "0")
            GestureDetector(
              onTap: onCart,
              child: Container(
                  height: 55,
                  width: 55,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                      border: Border.all(width: 1, color: Colors.white)),
                  child: Stack(
                    children: [
                      Center(
                          child: Assets.images.cartIcon.svg(fit: BoxFit.cover)),
                      Positioned(
                        top: 7,
                        right: 7,
                        child: Container(
                          height: 20,
                          width: 20,
                          decoration: const BoxDecoration(
                            color: Colors.blue,
                            shape: BoxShape.circle,
                          ),
                          child: Center(
                              child: Text(
                            count,
                            style: const TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w400,
                                color: Colors.white),
                          )),
                        ),
                      ),
                    ],
                  )),
            ),
          if (count == "0")
            GestureDetector(
              onTap: onCart,
              child: Container(
                  height: 55,
                  width: 55,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                      border: Border.all(width: 1, color: Colors.white)),
                  child: Stack(
                    children: [
                      Center(
                          child: Assets.images.cartIcon.svg(fit: BoxFit.cover)),
                    ],
                  )),
            ),
        ],
      ),
    ),
  );
}

PreferredSizeWidget shortAppBar(AppColorTheme colorTheme, String name,
    String inn, String count, VoidCallback onCart) {
  return AppBar(
    surfaceTintColor: Colors.transparent,
    automaticallyImplyLeading: false,
    toolbarHeight: 95,
    shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
      bottomRight: Radius.circular(40.0),
    )),
    backgroundColor: colorTheme.appBarGreen,
    shadowColor: Colors.white,
    elevation: 0,
    title: Container(
      padding: const EdgeInsets.only(top: 16, bottom: 16),
      decoration: BoxDecoration(
          borderRadius:
              const BorderRadius.only(bottomRight: Radius.circular(40.0)),
          color: colorTheme.appBarGreen),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(width: 16),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 10),
              SizedBox(
                width: 235,
                child: Text(
                  name,
                  maxLines: 2,
                  style: const TextStyle(
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                      fontSize: 15),
                ),
              ),
              const SizedBox(height: 5),
              Text(
                "ИНН: $inn",
                style: const TextStyle(
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                    fontSize: 11),
              ),
            ],
          ),
          const Spacer(),
          if (count != "0")
            GestureDetector(
              onTap: onCart,
              child: Container(
                  height: 55,
                  width: 55,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                      border: Border.all(width: 1, color: Colors.white)),
                  child: Stack(
                    children: [
                      Center(
                          child: Assets.images.cartIcon.svg(fit: BoxFit.cover)),
                      Positioned(
                        top: 7,
                        right: 7,
                        child: Container(
                          height: 20,
                          width: 20,
                          decoration: const BoxDecoration(
                            color: Colors.blue,
                            shape: BoxShape.circle,
                          ),
                          child: Center(
                              child: Text(
                            count,
                            style: const TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w400,
                                color: Colors.white),
                          )),
                        ),
                      ),
                    ],
                  )),
            ),
          if (count == "0")
            GestureDetector(
              onTap: onCart,
              child: Container(
                  height: 55,
                  width: 55,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                      border: Border.all(width: 1, color: Colors.white)),
                  child: Stack(
                    children: [
                      Center(
                          child: Assets.images.cartIcon.svg(fit: BoxFit.cover)),
                    ],
                  )),
            ),
        ],
      ),
    ),
  );
}

BoxDecoration decorationOfBoxes() {
  return BoxDecoration(
    color: Colors.white,
    borderRadius: const BorderRadius.all(Radius.circular(12)),
    boxShadow: [
      BoxShadow(
        color: const Color(0xFF000000).withOpacity(0.04),
        spreadRadius: 2,
        blurRadius: 12,
        offset: const Offset(0, 2), // changes position of shadow
      ),
    ],
  );
}
