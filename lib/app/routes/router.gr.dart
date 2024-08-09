// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i37;
import 'package:auto_route/empty_router_widgets.dart' as _i9;
import 'package:flutter/material.dart' as _i38;

import '../../presentation/about/data/models/block_model.dart' as _i39;
import '../../presentation/about/view/pages/about_info_page.dart' as _i17;
import '../../presentation/about/view/pages/about_page.dart' as _i16;
import '../../presentation/ads/data/models/ads_model.dart' as _i45;
import '../../presentation/ads/view/pages/ads_category_page.dart' as _i35;
import '../../presentation/ads/view/pages/ads_detail_page.dart' as _i34;
import '../../presentation/ads/view/pages/ads_main_page.dart' as _i33;
import '../../presentation/ads/view/pages/ads_subcategory_page.dart' as _i36;
import '../../presentation/ads/view/pages/my_ads/add_ads_page.dart' as _i23;
import '../../presentation/ads/view/pages/my_ads/my_products_page.dart' as _i22;
import '../../presentation/favorite/view/pages/favorite_page.dart' as _i11;
import '../../presentation/main/%20data/models/category.dart' as _i40;
import '../../presentation/main/%20data/models/company.dart' as _i42;
import '../../presentation/main/%20data/models/product.dart' as _i43;
import '../../presentation/main/%20data/models/subcategory.dart' as _i41;
import '../../presentation/main/view/pages/action_list_page.dart' as _i18;
import '../../presentation/main/view/pages/catalog_page.dart' as _i24;
import '../../presentation/main/view/pages/company_catalog.dart' as _i27;
import '../../presentation/main/view/pages/company_info_page.dart' as _i29;
import '../../presentation/main/view/pages/company_products.dart' as _i28;
import '../../presentation/main/view/pages/home_page.dart' as _i12;
import '../../presentation/main/view/pages/main_page.dart' as _i8;
import '../../presentation/main/view/pages/product_info.dart' as _i30;
import '../../presentation/main/view/pages/products_page.dart' as _i26;
import '../../presentation/main/view/pages/subcatalog_page.dart' as _i25;
import '../../presentation/main/view/pages/top_list_page.dart' as _i19;
import '../../presentation/onboarding/view/pages/onboarding_page.dart' as _i2;
import '../../presentation/orders/data/models/order_info.dart' as _i44;
import '../../presentation/orders/view/orders_page.dart' as _i31;
import '../../presentation/orders/view/orders_products_page.dart' as _i32;
import '../../presentation/profile/view/pages/profile_page.dart' as _i10;
import '../../presentation/registration/view/pages/enter_page.dart' as _i7;
import '../../presentation/registration/view/pages/enter_pin.dart' as _i6;
import '../../presentation/registration/view/pages/forgot_password_page.dart'
    as _i5;
import '../../presentation/registration/view/pages/registration.dart' as _i4;
import '../../presentation/registration/view/pages/registration_begin.dart'
    as _i3;
import '../../presentation/settings/view/confirm_delete.dart' as _i14;
import '../../presentation/settings/view/settings_page.dart' as _i13;
import '../../presentation/settings/view/user_deleted.dart' as _i15;
import '../../presentation/splash/view/pages/splash_screen.dart' as _i1;
import '../../presentation/support/view/pages/support_page.dart' as _i20;
import '../../presentation/support/view/pages/support_request_sent.dart'
    as _i21;

class AppRouter extends _i37.RootStackRouter {
  AppRouter([_i38.GlobalKey<_i38.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i37.PageFactory> pagesMap = {
    SplashScreen.name: (routeData) {
      return _i37.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i1.SplashScreen(),
      );
    },
    OnboardingRoute.name: (routeData) {
      return _i37.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i2.OnboardingPage(),
      );
    },
    RegistrationBegin.name: (routeData) {
      return _i37.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i3.RegistrationBegin(),
      );
    },
    RegistrationRoute.name: (routeData) {
      return _i37.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i4.RegistrationPage(),
      );
    },
    ForgotPasswordRoute.name: (routeData) {
      return _i37.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i5.ForgotPasswordPage(),
      );
    },
    EnterPinCodeRoute.name: (routeData) {
      final args = routeData.argsAs<EnterPinCodeRouteArgs>();
      return _i37.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i6.EnterPinCodePage(
          key: args.key,
          phone: args.phone,
        ),
      );
    },
    EnterRoute.name: (routeData) {
      return _i37.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i7.EnterPage(),
      );
    },
    MainRoute.name: (routeData) {
      return _i37.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i8.MainPage(),
      );
    },
    HomePageRoute.name: (routeData) {
      return _i37.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i9.EmptyRouterPage(),
      );
    },
    CatalogsRoute.name: (routeData) {
      return _i37.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i9.EmptyRouterPage(),
      );
    },
    OrdersPageRoute.name: (routeData) {
      return _i37.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i9.EmptyRouterPage(),
      );
    },
    ProfileRoute.name: (routeData) {
      return _i37.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i10.ProfilePage(),
      );
    },
    FavoriteRoute.name: (routeData) {
      return _i37.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i11.FavoritePage(),
      );
    },
    AdsMainPageRoute.name: (routeData) {
      return _i37.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i9.EmptyRouterPage(),
      );
    },
    HomeRoute.name: (routeData) {
      return _i37.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i12.HomePage(),
      );
    },
    SettingsRoute.name: (routeData) {
      return _i37.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i13.SettingsPage(),
      );
    },
    ConfirmDeleteUserRoute.name: (routeData) {
      return _i37.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i14.ConfirmDeleteUserPage(),
      );
    },
    UserDeletedRoute.name: (routeData) {
      return _i37.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i15.UserDeletedPage(),
      );
    },
    AboutRoute.name: (routeData) {
      return _i37.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i16.AboutPage(),
      );
    },
    AboutInfoRoute.name: (routeData) {
      final args = routeData.argsAs<AboutInfoRouteArgs>();
      return _i37.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i17.AboutInfoPage(
          key: args.key,
          block: args.block,
        ),
      );
    },
    ActionListRoute.name: (routeData) {
      return _i37.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i18.ActionListPage(),
      );
    },
    TopListRoute.name: (routeData) {
      return _i37.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i19.TopListPage(),
      );
    },
    SupportRoute.name: (routeData) {
      return _i37.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i20.SupportPage(),
      );
    },
    SupportRequestSent.name: (routeData) {
      return _i37.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i21.SupportRequestSent(),
      );
    },
    MyProductsRoute.name: (routeData) {
      return _i37.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i22.MyProductsPage(),
      );
    },
    AddNewAdsRoute.name: (routeData) {
      return _i37.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i23.AddNewAdsPage(),
      );
    },
    CatalogRoute.name: (routeData) {
      final args = routeData.argsAs<CatalogRouteArgs>(
          orElse: () => const CatalogRouteArgs());
      return _i37.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i24.CatalogPage(
          key: args.key,
          companyId: args.companyId,
          fromCompanyCatalog: args.fromCompanyCatalog,
        ),
      );
    },
    SubcatalogRoute.name: (routeData) {
      final args = routeData.argsAs<SubcatalogRouteArgs>();
      return _i37.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i25.SubcatalogPage(
          key: args.key,
          category: args.category,
        ),
      );
    },
    ProductsRoute.name: (routeData) {
      final args = routeData.argsAs<ProductsRouteArgs>();
      return _i37.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i26.ProductsPage(
          key: args.key,
          category: args.category,
        ),
      );
    },
    CompanyCatalog.name: (routeData) {
      final args = routeData.argsAs<CompanyCatalogArgs>();
      return _i37.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i27.CompanyCatalog(
          key: args.key,
          company: args.company,
          fromFavorite: args.fromFavorite,
        ),
      );
    },
    CompanyProducts.name: (routeData) {
      final args = routeData.argsAs<CompanyProductsArgs>();
      return _i37.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i28.CompanyProducts(
          key: args.key,
          company: args.company,
          categoryId: args.categoryId,
          categoryName: args.categoryName,
          fromFavorite: args.fromFavorite,
        ),
      );
    },
    CompanyInfoRoute.name: (routeData) {
      final args = routeData.argsAs<CompanyInfoRouteArgs>();
      return _i37.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i29.CompanyInfoPage(
          key: args.key,
          company: args.company,
        ),
      );
    },
    ProductsInfoRoute.name: (routeData) {
      final args = routeData.argsAs<ProductsInfoRouteArgs>();
      return _i37.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i30.ProductsInfoPage(
          key: args.key,
          product: args.product,
        ),
      );
    },
    OrdersRoute.name: (routeData) {
      return _i37.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i31.OrdersPage(),
      );
    },
    OrdersProductsRoute.name: (routeData) {
      final args = routeData.argsAs<OrdersProductsRouteArgs>();
      return _i37.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i32.OrdersProductsPage(
          key: args.key,
          order: args.order,
        ),
      );
    },
    AdsMainRoute.name: (routeData) {
      return _i37.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i33.AdsMainPage(),
      );
    },
    AdsDetailRoute.name: (routeData) {
      final args = routeData.argsAs<AdsDetailRouteArgs>();
      return _i37.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i34.AdsDetailPage(
          key: args.key,
          ad: args.ad,
        ),
      );
    },
    AdsCategoryRoute.name: (routeData) {
      final args = routeData.argsAs<AdsCategoryRouteArgs>();
      return _i37.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i35.AdsCategoryPage(
          key: args.key,
          sort: args.sort,
          type: args.type,
        ),
      );
    },
    AdsSubCategoryRoute.name: (routeData) {
      final args = routeData.argsAs<AdsSubCategoryRouteArgs>();
      return _i37.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i36.AdsSubCategoryPage(
          key: args.key,
          categoryId: args.categoryId,
        ),
      );
    },
  };

  @override
  List<_i37.RouteConfig> get routes => [
        _i37.RouteConfig(
          SplashScreen.name,
          path: '/',
        ),
        _i37.RouteConfig(
          OnboardingRoute.name,
          path: '/onboarding-page',
        ),
        _i37.RouteConfig(
          RegistrationBegin.name,
          path: '/registration-begin',
        ),
        _i37.RouteConfig(
          RegistrationRoute.name,
          path: '/registration-page',
        ),
        _i37.RouteConfig(
          ForgotPasswordRoute.name,
          path: '/forgot-password-page',
        ),
        _i37.RouteConfig(
          EnterPinCodeRoute.name,
          path: '/enter-pin-code-page',
        ),
        _i37.RouteConfig(
          EnterRoute.name,
          path: '/enter-page',
        ),
        _i37.RouteConfig(
          MainRoute.name,
          path: 'mainpage',
          children: [
            _i37.RouteConfig(
              '#redirect',
              path: '',
              parent: MainRoute.name,
              redirectTo: 'homepageroute',
              fullMatch: true,
            ),
            _i37.RouteConfig(
              HomePageRoute.name,
              path: 'homepageroute',
              parent: MainRoute.name,
              children: [
                _i37.RouteConfig(
                  HomeRoute.name,
                  path: '',
                  parent: HomePageRoute.name,
                ),
                _i37.RouteConfig(
                  SettingsRoute.name,
                  path: 'settings',
                  parent: HomePageRoute.name,
                ),
                _i37.RouteConfig(
                  ConfirmDeleteUserRoute.name,
                  path: 'confirm_delete',
                  parent: HomePageRoute.name,
                ),
                _i37.RouteConfig(
                  UserDeletedRoute.name,
                  path: 'user_deleted',
                  parent: HomePageRoute.name,
                ),
                _i37.RouteConfig(
                  AboutRoute.name,
                  path: 'about',
                  parent: HomePageRoute.name,
                ),
                _i37.RouteConfig(
                  AboutInfoRoute.name,
                  path: 'about_info',
                  parent: HomePageRoute.name,
                ),
                _i37.RouteConfig(
                  ActionListRoute.name,
                  path: 'actions_list',
                  parent: HomePageRoute.name,
                ),
                _i37.RouteConfig(
                  TopListRoute.name,
                  path: 'top_list',
                  parent: HomePageRoute.name,
                ),
                _i37.RouteConfig(
                  SupportRoute.name,
                  path: 'support',
                  parent: HomePageRoute.name,
                ),
                _i37.RouteConfig(
                  SupportRequestSent.name,
                  path: 'support_sent',
                  parent: HomePageRoute.name,
                ),
                _i37.RouteConfig(
                  MyProductsRoute.name,
                  path: 'my_ads',
                  parent: HomePageRoute.name,
                ),
                _i37.RouteConfig(
                  AddNewAdsRoute.name,
                  path: 'add_ads_page',
                  parent: HomePageRoute.name,
                ),
              ],
            ),
            _i37.RouteConfig(
              CatalogsRoute.name,
              path: 'empty-router-page',
              parent: MainRoute.name,
              children: [
                _i37.RouteConfig(
                  CatalogRoute.name,
                  path: '',
                  parent: CatalogsRoute.name,
                ),
                _i37.RouteConfig(
                  SubcatalogRoute.name,
                  path: 'subcatalog',
                  parent: CatalogsRoute.name,
                ),
                _i37.RouteConfig(
                  ProductsRoute.name,
                  path: 'products',
                  parent: CatalogsRoute.name,
                ),
                _i37.RouteConfig(
                  CompanyCatalog.name,
                  path: 'company_catalog',
                  parent: CatalogsRoute.name,
                ),
                _i37.RouteConfig(
                  CompanyProducts.name,
                  path: 'company_products',
                  parent: CatalogsRoute.name,
                ),
                _i37.RouteConfig(
                  CompanyInfoRoute.name,
                  path: 'company_info',
                  parent: CatalogsRoute.name,
                ),
                _i37.RouteConfig(
                  ProductsInfoRoute.name,
                  path: 'products_info',
                  parent: CatalogsRoute.name,
                ),
              ],
            ),
            _i37.RouteConfig(
              OrdersPageRoute.name,
              path: 'ordersRoute',
              parent: MainRoute.name,
              children: [
                _i37.RouteConfig(
                  OrdersRoute.name,
                  path: '',
                  parent: OrdersPageRoute.name,
                ),
                _i37.RouteConfig(
                  OrdersProductsRoute.name,
                  path: 'orderProducts',
                  parent: OrdersPageRoute.name,
                ),
              ],
            ),
            _i37.RouteConfig(
              ProfileRoute.name,
              path: 'profile-page',
              parent: MainRoute.name,
            ),
            _i37.RouteConfig(
              FavoriteRoute.name,
              path: 'favorite-page',
              parent: MainRoute.name,
            ),
            _i37.RouteConfig(
              AdsMainPageRoute.name,
              path: 'adsRoute',
              parent: MainRoute.name,
              children: [
                _i37.RouteConfig(
                  AdsMainRoute.name,
                  path: '',
                  parent: AdsMainPageRoute.name,
                ),
                _i37.RouteConfig(
                  AdsDetailRoute.name,
                  path: 'ads_detail',
                  parent: AdsMainPageRoute.name,
                ),
                _i37.RouteConfig(
                  AdsCategoryRoute.name,
                  path: 'ads_category',
                  parent: AdsMainPageRoute.name,
                ),
                _i37.RouteConfig(
                  AdsSubCategoryRoute.name,
                  path: 'ads_subcategory',
                  parent: AdsMainPageRoute.name,
                ),
                _i37.RouteConfig(
                  SubcatalogRoute.name,
                  path: 'subcatalog',
                  parent: AdsMainPageRoute.name,
                ),
                _i37.RouteConfig(
                  ProductsRoute.name,
                  path: 'products',
                  parent: AdsMainPageRoute.name,
                ),
                _i37.RouteConfig(
                  CompanyCatalog.name,
                  path: 'company_catalog',
                  parent: AdsMainPageRoute.name,
                ),
                _i37.RouteConfig(
                  CompanyProducts.name,
                  path: 'company_products',
                  parent: AdsMainPageRoute.name,
                ),
                _i37.RouteConfig(
                  CompanyInfoRoute.name,
                  path: 'company_info',
                  parent: AdsMainPageRoute.name,
                ),
                _i37.RouteConfig(
                  ProductsInfoRoute.name,
                  path: 'products_info',
                  parent: AdsMainPageRoute.name,
                ),
              ],
            ),
          ],
        ),
      ];
}

/// generated route for
/// [_i1.SplashScreen]
class SplashScreen extends _i37.PageRouteInfo<void> {
  const SplashScreen()
      : super(
          SplashScreen.name,
          path: '/',
        );

  static const String name = 'SplashScreen';
}

/// generated route for
/// [_i2.OnboardingPage]
class OnboardingRoute extends _i37.PageRouteInfo<void> {
  const OnboardingRoute()
      : super(
          OnboardingRoute.name,
          path: '/onboarding-page',
        );

  static const String name = 'OnboardingRoute';
}

/// generated route for
/// [_i3.RegistrationBegin]
class RegistrationBegin extends _i37.PageRouteInfo<void> {
  const RegistrationBegin()
      : super(
          RegistrationBegin.name,
          path: '/registration-begin',
        );

  static const String name = 'RegistrationBegin';
}

/// generated route for
/// [_i4.RegistrationPage]
class RegistrationRoute extends _i37.PageRouteInfo<void> {
  const RegistrationRoute()
      : super(
          RegistrationRoute.name,
          path: '/registration-page',
        );

  static const String name = 'RegistrationRoute';
}

/// generated route for
/// [_i5.ForgotPasswordPage]
class ForgotPasswordRoute extends _i37.PageRouteInfo<void> {
  const ForgotPasswordRoute()
      : super(
          ForgotPasswordRoute.name,
          path: '/forgot-password-page',
        );

  static const String name = 'ForgotPasswordRoute';
}

/// generated route for
/// [_i6.EnterPinCodePage]
class EnterPinCodeRoute extends _i37.PageRouteInfo<EnterPinCodeRouteArgs> {
  EnterPinCodeRoute({
    _i38.Key? key,
    required String phone,
  }) : super(
          EnterPinCodeRoute.name,
          path: '/enter-pin-code-page',
          args: EnterPinCodeRouteArgs(
            key: key,
            phone: phone,
          ),
        );

  static const String name = 'EnterPinCodeRoute';
}

class EnterPinCodeRouteArgs {
  const EnterPinCodeRouteArgs({
    this.key,
    required this.phone,
  });

  final _i38.Key? key;

  final String phone;

  @override
  String toString() {
    return 'EnterPinCodeRouteArgs{key: $key, phone: $phone}';
  }
}

/// generated route for
/// [_i7.EnterPage]
class EnterRoute extends _i37.PageRouteInfo<void> {
  const EnterRoute()
      : super(
          EnterRoute.name,
          path: '/enter-page',
        );

  static const String name = 'EnterRoute';
}

/// generated route for
/// [_i8.MainPage]
class MainRoute extends _i37.PageRouteInfo<void> {
  const MainRoute({List<_i37.PageRouteInfo>? children})
      : super(
          MainRoute.name,
          path: 'mainpage',
          initialChildren: children,
        );

  static const String name = 'MainRoute';
}

/// generated route for
/// [_i9.EmptyRouterPage]
class HomePageRoute extends _i37.PageRouteInfo<void> {
  const HomePageRoute({List<_i37.PageRouteInfo>? children})
      : super(
          HomePageRoute.name,
          path: 'homepageroute',
          initialChildren: children,
        );

  static const String name = 'HomePageRoute';
}

/// generated route for
/// [_i9.EmptyRouterPage]
class CatalogsRoute extends _i37.PageRouteInfo<void> {
  const CatalogsRoute({List<_i37.PageRouteInfo>? children})
      : super(
          CatalogsRoute.name,
          path: 'empty-router-page',
          initialChildren: children,
        );

  static const String name = 'CatalogsRoute';
}

/// generated route for
/// [_i9.EmptyRouterPage]
class OrdersPageRoute extends _i37.PageRouteInfo<void> {
  const OrdersPageRoute({List<_i37.PageRouteInfo>? children})
      : super(
          OrdersPageRoute.name,
          path: 'ordersRoute',
          initialChildren: children,
        );

  static const String name = 'OrdersPageRoute';
}

/// generated route for
/// [_i10.ProfilePage]
class ProfileRoute extends _i37.PageRouteInfo<void> {
  const ProfileRoute()
      : super(
          ProfileRoute.name,
          path: 'profile-page',
        );

  static const String name = 'ProfileRoute';
}

/// generated route for
/// [_i11.FavoritePage]
class FavoriteRoute extends _i37.PageRouteInfo<void> {
  const FavoriteRoute()
      : super(
          FavoriteRoute.name,
          path: 'favorite-page',
        );

  static const String name = 'FavoriteRoute';
}

/// generated route for
/// [_i9.EmptyRouterPage]
class AdsMainPageRoute extends _i37.PageRouteInfo<void> {
  const AdsMainPageRoute({List<_i37.PageRouteInfo>? children})
      : super(
          AdsMainPageRoute.name,
          path: 'adsRoute',
          initialChildren: children,
        );

  static const String name = 'AdsMainPageRoute';
}

/// generated route for
/// [_i12.HomePage]
class HomeRoute extends _i37.PageRouteInfo<void> {
  const HomeRoute()
      : super(
          HomeRoute.name,
          path: '',
        );

  static const String name = 'HomeRoute';
}

/// generated route for
/// [_i13.SettingsPage]
class SettingsRoute extends _i37.PageRouteInfo<void> {
  const SettingsRoute()
      : super(
          SettingsRoute.name,
          path: 'settings',
        );

  static const String name = 'SettingsRoute';
}

/// generated route for
/// [_i14.ConfirmDeleteUserPage]
class ConfirmDeleteUserRoute extends _i37.PageRouteInfo<void> {
  const ConfirmDeleteUserRoute()
      : super(
          ConfirmDeleteUserRoute.name,
          path: 'confirm_delete',
        );

  static const String name = 'ConfirmDeleteUserRoute';
}

/// generated route for
/// [_i15.UserDeletedPage]
class UserDeletedRoute extends _i37.PageRouteInfo<void> {
  const UserDeletedRoute()
      : super(
          UserDeletedRoute.name,
          path: 'user_deleted',
        );

  static const String name = 'UserDeletedRoute';
}

/// generated route for
/// [_i16.AboutPage]
class AboutRoute extends _i37.PageRouteInfo<void> {
  const AboutRoute()
      : super(
          AboutRoute.name,
          path: 'about',
        );

  static const String name = 'AboutRoute';
}

/// generated route for
/// [_i17.AboutInfoPage]
class AboutInfoRoute extends _i37.PageRouteInfo<AboutInfoRouteArgs> {
  AboutInfoRoute({
    _i38.Key? key,
    required _i39.BlockModel block,
  }) : super(
          AboutInfoRoute.name,
          path: 'about_info',
          args: AboutInfoRouteArgs(
            key: key,
            block: block,
          ),
        );

  static const String name = 'AboutInfoRoute';
}

class AboutInfoRouteArgs {
  const AboutInfoRouteArgs({
    this.key,
    required this.block,
  });

  final _i38.Key? key;

  final _i39.BlockModel block;

  @override
  String toString() {
    return 'AboutInfoRouteArgs{key: $key, block: $block}';
  }
}

/// generated route for
/// [_i18.ActionListPage]
class ActionListRoute extends _i37.PageRouteInfo<void> {
  const ActionListRoute()
      : super(
          ActionListRoute.name,
          path: 'actions_list',
        );

  static const String name = 'ActionListRoute';
}

/// generated route for
/// [_i19.TopListPage]
class TopListRoute extends _i37.PageRouteInfo<void> {
  const TopListRoute()
      : super(
          TopListRoute.name,
          path: 'top_list',
        );

  static const String name = 'TopListRoute';
}

/// generated route for
/// [_i20.SupportPage]
class SupportRoute extends _i37.PageRouteInfo<void> {
  const SupportRoute()
      : super(
          SupportRoute.name,
          path: 'support',
        );

  static const String name = 'SupportRoute';
}

/// generated route for
/// [_i21.SupportRequestSent]
class SupportRequestSent extends _i37.PageRouteInfo<void> {
  const SupportRequestSent()
      : super(
          SupportRequestSent.name,
          path: 'support_sent',
        );

  static const String name = 'SupportRequestSent';
}

/// generated route for
/// [_i22.MyProductsPage]
class MyProductsRoute extends _i37.PageRouteInfo<void> {
  const MyProductsRoute()
      : super(
          MyProductsRoute.name,
          path: 'my_ads',
        );

  static const String name = 'MyProductsRoute';
}

/// generated route for
/// [_i23.AddNewAdsPage]
class AddNewAdsRoute extends _i37.PageRouteInfo<void> {
  const AddNewAdsRoute()
      : super(
          AddNewAdsRoute.name,
          path: 'add_ads_page',
        );

  static const String name = 'AddNewAdsRoute';
}

/// generated route for
/// [_i24.CatalogPage]
class CatalogRoute extends _i37.PageRouteInfo<CatalogRouteArgs> {
  CatalogRoute({
    _i38.Key? key,
    String? companyId,
    bool? fromCompanyCatalog,
  }) : super(
          CatalogRoute.name,
          path: '',
          args: CatalogRouteArgs(
            key: key,
            companyId: companyId,
            fromCompanyCatalog: fromCompanyCatalog,
          ),
        );

  static const String name = 'CatalogRoute';
}

class CatalogRouteArgs {
  const CatalogRouteArgs({
    this.key,
    this.companyId,
    this.fromCompanyCatalog,
  });

  final _i38.Key? key;

  final String? companyId;

  final bool? fromCompanyCatalog;

  @override
  String toString() {
    return 'CatalogRouteArgs{key: $key, companyId: $companyId, fromCompanyCatalog: $fromCompanyCatalog}';
  }
}

/// generated route for
/// [_i25.SubcatalogPage]
class SubcatalogRoute extends _i37.PageRouteInfo<SubcatalogRouteArgs> {
  SubcatalogRoute({
    _i38.Key? key,
    required _i40.Category category,
  }) : super(
          SubcatalogRoute.name,
          path: 'subcatalog',
          args: SubcatalogRouteArgs(
            key: key,
            category: category,
          ),
        );

  static const String name = 'SubcatalogRoute';
}

class SubcatalogRouteArgs {
  const SubcatalogRouteArgs({
    this.key,
    required this.category,
  });

  final _i38.Key? key;

  final _i40.Category category;

  @override
  String toString() {
    return 'SubcatalogRouteArgs{key: $key, category: $category}';
  }
}

/// generated route for
/// [_i26.ProductsPage]
class ProductsRoute extends _i37.PageRouteInfo<ProductsRouteArgs> {
  ProductsRoute({
    _i38.Key? key,
    required _i41.Subcategory category,
  }) : super(
          ProductsRoute.name,
          path: 'products',
          args: ProductsRouteArgs(
            key: key,
            category: category,
          ),
        );

  static const String name = 'ProductsRoute';
}

class ProductsRouteArgs {
  const ProductsRouteArgs({
    this.key,
    required this.category,
  });

  final _i38.Key? key;

  final _i41.Subcategory category;

  @override
  String toString() {
    return 'ProductsRouteArgs{key: $key, category: $category}';
  }
}

/// generated route for
/// [_i27.CompanyCatalog]
class CompanyCatalog extends _i37.PageRouteInfo<CompanyCatalogArgs> {
  CompanyCatalog({
    _i38.Key? key,
    required _i42.Company company,
    bool? fromFavorite,
  }) : super(
          CompanyCatalog.name,
          path: 'company_catalog',
          args: CompanyCatalogArgs(
            key: key,
            company: company,
            fromFavorite: fromFavorite,
          ),
        );

  static const String name = 'CompanyCatalog';
}

class CompanyCatalogArgs {
  const CompanyCatalogArgs({
    this.key,
    required this.company,
    this.fromFavorite,
  });

  final _i38.Key? key;

  final _i42.Company company;

  final bool? fromFavorite;

  @override
  String toString() {
    return 'CompanyCatalogArgs{key: $key, company: $company, fromFavorite: $fromFavorite}';
  }
}

/// generated route for
/// [_i28.CompanyProducts]
class CompanyProducts extends _i37.PageRouteInfo<CompanyProductsArgs> {
  CompanyProducts({
    _i38.Key? key,
    required _i42.Company company,
    required String categoryId,
    required String categoryName,
    bool? fromFavorite,
  }) : super(
          CompanyProducts.name,
          path: 'company_products',
          args: CompanyProductsArgs(
            key: key,
            company: company,
            categoryId: categoryId,
            categoryName: categoryName,
            fromFavorite: fromFavorite,
          ),
        );

  static const String name = 'CompanyProducts';
}

class CompanyProductsArgs {
  const CompanyProductsArgs({
    this.key,
    required this.company,
    required this.categoryId,
    required this.categoryName,
    this.fromFavorite,
  });

  final _i38.Key? key;

  final _i42.Company company;

  final String categoryId;

  final String categoryName;

  final bool? fromFavorite;

  @override
  String toString() {
    return 'CompanyProductsArgs{key: $key, company: $company, categoryId: $categoryId, categoryName: $categoryName, fromFavorite: $fromFavorite}';
  }
}

/// generated route for
/// [_i29.CompanyInfoPage]
class CompanyInfoRoute extends _i37.PageRouteInfo<CompanyInfoRouteArgs> {
  CompanyInfoRoute({
    _i38.Key? key,
    required _i42.Company company,
  }) : super(
          CompanyInfoRoute.name,
          path: 'company_info',
          args: CompanyInfoRouteArgs(
            key: key,
            company: company,
          ),
        );

  static const String name = 'CompanyInfoRoute';
}

class CompanyInfoRouteArgs {
  const CompanyInfoRouteArgs({
    this.key,
    required this.company,
  });

  final _i38.Key? key;

  final _i42.Company company;

  @override
  String toString() {
    return 'CompanyInfoRouteArgs{key: $key, company: $company}';
  }
}

/// generated route for
/// [_i30.ProductsInfoPage]
class ProductsInfoRoute extends _i37.PageRouteInfo<ProductsInfoRouteArgs> {
  ProductsInfoRoute({
    _i38.Key? key,
    required _i43.Product product,
  }) : super(
          ProductsInfoRoute.name,
          path: 'products_info',
          args: ProductsInfoRouteArgs(
            key: key,
            product: product,
          ),
        );

  static const String name = 'ProductsInfoRoute';
}

class ProductsInfoRouteArgs {
  const ProductsInfoRouteArgs({
    this.key,
    required this.product,
  });

  final _i38.Key? key;

  final _i43.Product product;

  @override
  String toString() {
    return 'ProductsInfoRouteArgs{key: $key, product: $product}';
  }
}

/// generated route for
/// [_i31.OrdersPage]
class OrdersRoute extends _i37.PageRouteInfo<void> {
  const OrdersRoute()
      : super(
          OrdersRoute.name,
          path: '',
        );

  static const String name = 'OrdersRoute';
}

/// generated route for
/// [_i32.OrdersProductsPage]
class OrdersProductsRoute extends _i37.PageRouteInfo<OrdersProductsRouteArgs> {
  OrdersProductsRoute({
    _i38.Key? key,
    required _i44.OrderInfo order,
  }) : super(
          OrdersProductsRoute.name,
          path: 'orderProducts',
          args: OrdersProductsRouteArgs(
            key: key,
            order: order,
          ),
        );

  static const String name = 'OrdersProductsRoute';
}

class OrdersProductsRouteArgs {
  const OrdersProductsRouteArgs({
    this.key,
    required this.order,
  });

  final _i38.Key? key;

  final _i44.OrderInfo order;

  @override
  String toString() {
    return 'OrdersProductsRouteArgs{key: $key, order: $order}';
  }
}

/// generated route for
/// [_i33.AdsMainPage]
class AdsMainRoute extends _i37.PageRouteInfo<void> {
  const AdsMainRoute()
      : super(
          AdsMainRoute.name,
          path: '',
        );

  static const String name = 'AdsMainRoute';
}

/// generated route for
/// [_i34.AdsDetailPage]
class AdsDetailRoute extends _i37.PageRouteInfo<AdsDetailRouteArgs> {
  AdsDetailRoute({
    _i38.Key? key,
    required _i45.AdsModel ad,
  }) : super(
          AdsDetailRoute.name,
          path: 'ads_detail',
          args: AdsDetailRouteArgs(
            key: key,
            ad: ad,
          ),
        );

  static const String name = 'AdsDetailRoute';
}

class AdsDetailRouteArgs {
  const AdsDetailRouteArgs({
    this.key,
    required this.ad,
  });

  final _i38.Key? key;

  final _i45.AdsModel ad;

  @override
  String toString() {
    return 'AdsDetailRouteArgs{key: $key, ad: $ad}';
  }
}

/// generated route for
/// [_i35.AdsCategoryPage]
class AdsCategoryRoute extends _i37.PageRouteInfo<AdsCategoryRouteArgs> {
  AdsCategoryRoute({
    _i38.Key? key,
    required String sort,
    required String type,
  }) : super(
          AdsCategoryRoute.name,
          path: 'ads_category',
          args: AdsCategoryRouteArgs(
            key: key,
            sort: sort,
            type: type,
          ),
        );

  static const String name = 'AdsCategoryRoute';
}

class AdsCategoryRouteArgs {
  const AdsCategoryRouteArgs({
    this.key,
    required this.sort,
    required this.type,
  });

  final _i38.Key? key;

  final String sort;

  final String type;

  @override
  String toString() {
    return 'AdsCategoryRouteArgs{key: $key, sort: $sort, type: $type}';
  }
}

/// generated route for
/// [_i36.AdsSubCategoryPage]
class AdsSubCategoryRoute extends _i37.PageRouteInfo<AdsSubCategoryRouteArgs> {
  AdsSubCategoryRoute({
    _i38.Key? key,
    required String categoryId,
  }) : super(
          AdsSubCategoryRoute.name,
          path: 'ads_subcategory',
          args: AdsSubCategoryRouteArgs(
            key: key,
            categoryId: categoryId,
          ),
        );

  static const String name = 'AdsSubCategoryRoute';
}

class AdsSubCategoryRouteArgs {
  const AdsSubCategoryRouteArgs({
    this.key,
    required this.categoryId,
  });

  final _i38.Key? key;

  final String categoryId;

  @override
  String toString() {
    return 'AdsSubCategoryRouteArgs{key: $key, categoryId: $categoryId}';
  }
}
