import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:optlove/app/theme/bloc/app_theme_bloc.dart';
import 'package:optlove/app/theme/models/app_pallete.dart';
import 'package:optlove/presentation/about/view/bloc/about_bloc.dart';
import 'package:optlove/presentation/cart/view/bloc/cart_bloc.dart';
import 'package:optlove/presentation/favorite/view/bloc/favorite_bloc.dart';
import 'package:optlove/presentation/main/view/bloc/action_bloc.dart';
import 'package:optlove/presentation/main/view/bloc/search_bloc.dart';
import 'package:optlove/presentation/main/view/bloc/products_bloc.dart';
import 'package:optlove/presentation/main/view/bloc/top_bloc.dart';
import 'package:optlove/presentation/main/view/bloc/user_exist_bloc.dart';
import 'package:optlove/presentation/main/view/bloc/work_orders_bloc.dart';
import 'package:optlove/presentation/orders/view/bloc/conditions_bloc.dart';
import 'package:optlove/presentation/orders/view/bloc/orders_bloc.dart';
import 'package:optlove/presentation/profile/view/bloc/profile_bloc.dart';
import 'package:optlove/presentation/profile/view/bloc/user_bloc.dart';
import 'package:optlove/presentation/registration/view/bloc/auth_bloc.dart';
import 'package:optlove/presentation/registration/view/bloc/registration_bloc.dart';
import 'package:optlove/presentation/registration/view/bloc/search_city_bloc.dart';
import 'package:optlove/presentation/sendactivity/bloc/sendactivity_bloc.dart';
import 'package:optlove/presentation/splash/view/bloc/static_bloc.dart';
import 'package:optlove/presentation/support/view/bloc/support_bloc.dart';

import 'app/routes/router.gr.dart';
import 'injector.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  FlutterError.onError = FirebaseCrashlytics.instance.recordFlutterFatalError;

  await initializeDependencies();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);
  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => AppThemeBloc()),
        BlocProvider(create: (context) => GetIt.I<RegistrationBloc>()),
        BlocProvider(create: (context) => GetIt.I<AuthBloc>()),
        BlocProvider(create: (context) => GetIt.I<SearchCityBloc>()),
        BlocProvider(create: (context) => GetIt.I<SearchBloc>()),
        BlocProvider(create: (context) => GetIt.I<ProductsBloc>()),
        BlocProvider(create: (context) => GetIt.I<SendActivityBloc>()),
        BlocProvider(create: (context) => GetIt.I<UserBloc>()),
        BlocProvider(create: (context) => GetIt.I<CartBloc>()),
        BlocProvider(create: (context) => GetIt.I<OrdersBloc>()),
        BlocProvider(create: (context) => GetIt.I<ConditionsBloc>()),
        BlocProvider(create: (context) => GetIt.I<AboutBloc>()),
        BlocProvider(create: (context) => GetIt.I<StaticBloc>()),
        BlocProvider(create: (context) => GetIt.I<WorkOrdersBloc>()),
        BlocProvider(create: (context) => GetIt.I<ActionsBloc>()),
        BlocProvider(create: (context) => GetIt.I<FavoriteBloc>()),
        BlocProvider(create: (context) => GetIt.I<UserExistBloc>()),
        BlocProvider(create: (context) => GetIt.I<SupportBloc>()),
        BlocProvider(create: (context) => GetIt.I<ProfileBloc>()),
        BlocProvider(create: (context) => GetIt.I<TopBloc>()),
      ],
      child: MaterialApp.router(
        title: 'OptLove',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          textSelectionTheme: const TextSelectionThemeData(
            cursorColor: AppPallete.grayText,
          ),
        ),
        routerDelegate: _appRouter.delegate(
          navigatorObservers: () => [
            AutoRouteObserver(),
          ],
        ),
        routeInformationParser: _appRouter.defaultRouteParser(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
