import 'package:auto_route/annotations.dart';
import 'package:auto_route/empty_router_widgets.dart';
import 'package:optlove/presentation/about/view/pages/about_info_page.dart';
import 'package:optlove/presentation/about/view/pages/about_page.dart';
import 'package:optlove/presentation/ads/view/pages/ads_category_page.dart';
import 'package:optlove/presentation/ads/view/pages/ads_detail_page.dart';
import 'package:optlove/presentation/ads/view/pages/ads_main_page.dart';
import 'package:optlove/presentation/ads/view/pages/ads_subcategory_page.dart';
import 'package:optlove/presentation/ads/view/pages/my_ads/add_ads_page.dart';
import 'package:optlove/presentation/ads/view/pages/my_ads/my_products_page.dart';
import 'package:optlove/presentation/favorite/view/pages/favorite_page.dart';
import 'package:optlove/presentation/main/view/pages/action_list_page.dart';
import 'package:optlove/presentation/main/view/pages/catalog_page.dart';
import 'package:optlove/presentation/main/view/pages/company_catalog.dart';
import 'package:optlove/presentation/main/view/pages/home_page.dart';
import 'package:optlove/presentation/main/view/pages/main_page.dart';
import 'package:optlove/presentation/main/view/pages/product_info.dart';
import 'package:optlove/presentation/main/view/pages/products_page.dart';
import 'package:optlove/presentation/main/view/pages/subcatalog_page.dart';
import 'package:optlove/presentation/main/view/pages/top_list_page.dart';
import 'package:optlove/presentation/onboarding/view/pages/onboarding_page.dart';
import 'package:optlove/presentation/orders/view/orders_page.dart';
import 'package:optlove/presentation/orders/view/orders_products_page.dart';
import 'package:optlove/presentation/profile/view/pages/profile_page.dart';
import 'package:optlove/presentation/registration/view/pages/enter_pin.dart';
import 'package:optlove/presentation/registration/view/pages/forgot_password_page.dart';
import 'package:optlove/presentation/registration/view/pages/registration.dart';
import 'package:optlove/presentation/registration/view/pages/registration_begin.dart';
import 'package:optlove/presentation/settings/view/settings_page.dart';
import 'package:optlove/presentation/splash/view/pages/splash_screen.dart';
import 'package:optlove/presentation/support/view/pages/support_page.dart';

import '../../presentation/main/view/pages/company_info_page.dart';
import '../../presentation/main/view/pages/company_products.dart';
import '../../presentation/registration/view/pages/enter_page.dart';
import '../../presentation/settings/view/confirm_delete.dart';
import '../../presentation/settings/view/user_deleted.dart';
import '../../presentation/support/view/pages/support_request_sent.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: [
    AutoRoute(page: SplashScreen, initial: true),
    AutoRoute(page: OnboardingPage),
    AutoRoute(page: RegistrationBegin),
    AutoRoute(page: RegistrationPage),
    AutoRoute(page: ForgotPasswordPage),
    AutoRoute(page: EnterPinCodePage),
    AutoRoute(page: EnterPage),
    AutoRoute(
      page: MainPage,
      path: "mainpage",
      children: [
        AutoRoute(
            page: EmptyRouterPage,
            initial: true,
            path: "homepageroute",
            name: "HomePageRoute",
            children: [
              AutoRoute(page: HomePage, path: ''),
              AutoRoute(page: SettingsPage, path: 'settings'),
              AutoRoute(page: ConfirmDeleteUserPage, path: 'confirm_delete'),
              AutoRoute(page: UserDeletedPage, path: 'user_deleted'),
              AutoRoute(page: AboutPage, path: 'about'),
              AutoRoute(page: AboutInfoPage, path: 'about_info'),
              AutoRoute(page: ActionListPage, path: 'actions_list'),
              AutoRoute(page: TopListPage, path: 'top_list'),
              AutoRoute(page: SupportPage, path: 'support'),
              AutoRoute(page: SupportRequestSent, path: 'support_sent'),
              AutoRoute(page: MyProductsPage, path: 'my_ads'),
              AutoRoute(page: AddNewAdsPage, path: 'add_ads_page'),
              AutoRoute(page: FavoritePage, path: 'favorite_page'),
            ]),
        AutoRoute(page: EmptyRouterPage, name: "CatalogsRoute", children: [
          AutoRoute(page: CatalogPage, path: ''),
          AutoRoute(page: SubcatalogPage, path: 'subcatalog'),
          AutoRoute(page: ProductsPage, path: 'products'),
          AutoRoute(page: CompanyCatalog, path: 'company_catalog'),
          AutoRoute(page: CompanyProducts, path: 'company_products'),
          AutoRoute(page: CompanyInfoPage, path: 'company_info'),
          AutoRoute(page: ProductsInfoPage, path: 'products_info'),
        ]),
        AutoRoute(
            page: EmptyRouterPage,
            path: "ordersRoute",
            name: "OrdersPageRoute",
            children: [
              AutoRoute(page: OrdersPage, path: ''),
              AutoRoute(page: OrdersProductsPage, path: 'orderProducts'),
            ]),
        AutoRoute(page: ProfilePage),
        AutoRoute(
          page: EmptyRouterPage,
          path: 'adsRoute',
          name: "AdsMainPageRoute",
          children: [
            AutoRoute(page: AdsMainPage, path: ''),
            AutoRoute(page: AdsDetailPage, path: 'ads_detail'),
            AutoRoute(page: AdsCategoryPage, path: 'ads_category'),
            AutoRoute(page: AdsSubCategoryPage, path: 'ads_subcategory'),
            AutoRoute(page: SubcatalogPage, path: 'subcatalog'),
            AutoRoute(page: ProductsPage, path: 'products'),
            AutoRoute(page: CompanyCatalog, path: 'company_catalog'),
            AutoRoute(page: CompanyProducts, path: 'company_products'),
            AutoRoute(page: CompanyInfoPage, path: 'company_info'),
            AutoRoute(page: ProductsInfoPage, path: 'products_info'),
          ],
        ),
      ],
    ),
  ],
)
class $AppRouter {}
