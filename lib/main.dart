import 'imports.dart';

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
  MyApp({super.key});
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
        BlocProvider(create: (context) => GetIt.I<AdsCategoryBloc>()),
        BlocProvider(create: (context) => GetIt.I<AdsSubcategoryBloc>()),
        BlocProvider(create: (context) => GetIt.I<AddAdBloc>()),
        BlocProvider(create: (context) => GetIt.I<AdsBloc>()),
        BlocProvider(create: (context) => GetIt.I<AdsFetchMyAdsBloc>()),
        BlocProvider(create: (context) => GetIt.I<AdsCityBloc>()),
        BlocProvider(create: (context) => GetIt.I<DeleteAdBloc>()),
        BlocProvider(create: (context) => GetIt.I<EditAdBloc>()),
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
