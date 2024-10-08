import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:optlove/presentation/about/view/bloc/about_bloc.dart';
import 'package:optlove/presentation/ads/data/datasources/ads_remote_datasource.dart';
import 'package:optlove/presentation/ads/data/repositories/ads_repository_impl.dart';
import 'package:optlove/presentation/ads/domain/repositories/ads_repository.dart';
import 'package:optlove/presentation/ads/view/bloc/ads/add_ad_bloc.dart';
import 'package:optlove/presentation/ads/view/bloc/ads/ads_bloc.dart';
import 'package:optlove/presentation/ads/view/bloc/ads/delete_ad_bloc.dart';
import 'package:optlove/presentation/ads/view/bloc/ads/edit_ad_bloc.dart';
import 'package:optlove/presentation/ads/view/bloc/category/ads_category_bloc.dart';
import 'package:optlove/presentation/ads/view/bloc/city/ads_city_bloc.dart';
import 'package:optlove/presentation/ads/view/bloc/ads/ads_fetch_my_ads_bloc.dart';
import 'package:optlove/presentation/ads/view/bloc/ads/ads_subcategory_bloc.dart';
import 'package:optlove/presentation/cart/view/bloc/cart_bloc.dart';
import 'package:optlove/presentation/favorite/view/bloc/favorite_bloc.dart';
import 'package:optlove/presentation/main/%20data/datasources/search_remote_datasource.dart';
import 'package:optlove/presentation/main/%20data/datasources/products_remote_datasource.dart';
import 'package:optlove/presentation/main/%20data/repositories/search_repository_impl.dart';
import 'package:optlove/presentation/main/%20data/repositories/products_repository_impl.dart';
import 'package:optlove/presentation/main/domain/repositories/search_repository.dart';
import 'package:optlove/presentation/main/domain/repositories/products_repository.dart';
import 'package:optlove/presentation/main/view/bloc/action_bloc.dart';
import 'package:optlove/presentation/main/view/bloc/search_bloc.dart';
import 'package:optlove/presentation/main/view/bloc/products_bloc.dart';
import 'package:optlove/presentation/main/view/bloc/top_bloc.dart';
import 'package:optlove/presentation/main/view/bloc/user_exist_bloc.dart';
import 'package:optlove/presentation/main/view/bloc/work_orders_bloc.dart';
import 'package:optlove/presentation/orders/data/datasources/orders_remote_datasource.dart';
import 'package:optlove/presentation/orders/data/repositories/orders_repository_impl.dart';
import 'package:optlove/presentation/orders/domain/repositories/orders_repository.dart';
import 'package:optlove/presentation/orders/view/bloc/conditions_bloc.dart';
import 'package:optlove/presentation/orders/view/bloc/orders_bloc.dart';
import 'package:optlove/presentation/profile/data/datasources/user_remote_datasource.dart';
import 'package:optlove/presentation/profile/data/repositories/user_repository_impl.dart';
import 'package:optlove/presentation/profile/domain/repositories/user_repository.dart';
import 'package:optlove/presentation/profile/view/bloc/profile_bloc.dart';
import 'package:optlove/presentation/profile/view/bloc/user_bloc.dart';
import 'package:optlove/presentation/registration/data/datasources/registration_remote_datasource.dart';
import 'package:optlove/presentation/registration/data/repositories/registration_repository_impl.dart';
import 'package:optlove/presentation/registration/domain/repositories/registration_repository.dart';
import 'package:optlove/presentation/registration/view/bloc/auth_bloc.dart';
import 'package:optlove/presentation/registration/view/bloc/registration_bloc.dart';
import 'package:optlove/presentation/registration/view/bloc/search_city_bloc.dart';
import 'package:optlove/presentation/sendactivity/bloc/sendactivity_bloc.dart';
import 'package:optlove/presentation/splash/view/bloc/static_bloc.dart';
import 'package:optlove/presentation/support/view/bloc/support_bloc.dart';

final injector = GetIt.instance;

Future<void> initializeDependencies() async {
  // *

  // Dio client
  injector.registerSingleton<Dio>(Dio());

  injector.registerSingleton<RegistrationApi>(RegistrationApi(injector()));

  injector.registerSingleton<SearchApi>(SearchApi(injector()));

  injector.registerSingleton<ProductsApi>(ProductsApi(injector()));

  injector.registerSingleton<UserApi>(UserApi(injector()));

  injector.registerSingleton<OrdersApi>(OrdersApi(injector()));

  injector.registerSingleton<AdsRemoteApi>(AdsRemoteApi(injector()));

  // Datasources
  injector.registerSingleton<RegistrationRemoteDatasource>(
      RegistrationRemoteDatasource(injector()));

  injector.registerSingleton<SearchRemoteDatasource>(
      SearchRemoteDatasource(injector()));

  injector.registerSingleton<ProductsRemoteDatasource>(
      ProductsRemoteDatasource(injector()));

  injector.registerSingleton<UserRemoteDatasource>(
      UserRemoteDatasource(injector()));

  injector.registerSingleton<OrdersRemoteDatasource>(
      OrdersRemoteDatasource(injector()));

  injector
      .registerSingleton<AdsRemoteDatasource>(AdsRemoteDatasource(injector()));

  //Repositories
  injector.registerSingleton<RegistrationRepository>(
      RegistrationRepositoryImpl(injector()));

  injector
      .registerSingleton<SearchRepository>(SearchRepositoryImpl(injector()));

  injector.registerSingleton<ProductsRepository>(
      ProductsRepositoryImpl(injector()));

  injector.registerSingleton<UserRepository>(UserRepositoryImpl(injector()));

  injector
      .registerSingleton<OrdersRepository>(OrdersRepositoryImpl(injector()));

  injector
      .registerSingleton<AdsRepository>(AdsCategoryRepositoryImpl(injector()));

  // Blocs
  injector.registerFactory<RegistrationBloc>(
    () => RegistrationBloc(injector()),
  );

  injector.registerFactory<AuthBloc>(
    () => AuthBloc(injector()),
  );

  injector.registerFactory<SearchCityBloc>(
    () => SearchCityBloc(injector()),
  );

  injector.registerFactory<SearchBloc>(
    () => SearchBloc(injector()),
  );

  injector.registerFactory<ProductsBloc>(
    () => ProductsBloc(injector()),
  );

  injector.registerFactory<SendActivityBloc>(
    () => SendActivityBloc(injector()),
  );

  injector.registerFactory<UserBloc>(
    () => UserBloc(injector()),
  );

  injector.registerFactory<CartBloc>(() => CartBloc(injector()));

  injector.registerFactory<OrdersBloc>(() => OrdersBloc(injector()));

  injector.registerFactory<ConditionsBloc>(() => ConditionsBloc(injector()));

  injector.registerFactory<AboutBloc>(() => AboutBloc(injector()));

  injector.registerFactory<StaticBloc>(() => StaticBloc(injector()));

  injector.registerFactory<WorkOrdersBloc>(() => WorkOrdersBloc(injector()));

  injector.registerFactory<ActionsBloc>(() => ActionsBloc(injector()));

  injector.registerFactory<FavoriteBloc>(
      () => FavoriteBloc(injector(), injector()));

  injector.registerFactory<UserExistBloc>(() => UserExistBloc(injector()));

  injector.registerFactory<SupportBloc>(() => SupportBloc(injector()));
  injector.registerFactory<ProfileBloc>(() => ProfileBloc(injector()));
  injector.registerFactory<TopBloc>(() => TopBloc(injector()));

  injector.registerFactory<AdsCategoryBloc>(() => AdsCategoryBloc(injector()));

  injector.registerFactory<AdsSubcategoryBloc>(
      () => AdsSubcategoryBloc(injector()));

  injector.registerFactory<AddAdBloc>(() => AddAdBloc(injector()));

  injector.registerFactory<AdsBloc>(() => AdsBloc(injector()));

  injector
      .registerFactory<AdsFetchMyAdsBloc>(() => AdsFetchMyAdsBloc(injector()));

  injector.registerFactory<AdsCityBloc>(() => AdsCityBloc(injector()));

  injector.registerFactory<DeleteAdBloc>(() => DeleteAdBloc(injector()));

  injector.registerFactory<EditAdBloc>(() => EditAdBloc(injector()));
}
