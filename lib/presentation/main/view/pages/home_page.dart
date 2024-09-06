import 'package:assorted_layout_widgets/assorted_layout_widgets.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:optlove/app/routes/router.gr.dart';
import 'package:optlove/presentation/main/view/bloc/action_bloc.dart';
import 'package:optlove/presentation/main/view/bloc/top_bloc.dart';
import 'package:optlove/presentation/main/view/bloc/work_orders_bloc.dart';
import 'package:optlove/presentation/main/view/widgets/about_us_widget.dart';
import 'package:optlove/presentation/main/view/widgets/exists_order_widget.dart';
import 'package:optlove/presentation/sendactivity/bloc/sendactivity_bloc.dart';

import '../../../../app/theme/bloc/app_theme.dart';
import '../../../../app/utils/shared_preferences_helper.dart';
import '../../../../generated/assets.gen.dart';
import '../widgets/action_widget.dart';
import '../widgets/empty_orders_widgets.dart';
import '../widgets/top_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    super.key,
  });

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    BlocProvider.of<ActionsBloc>(context).add(const ActionsEvent.getActions());
    BlocProvider.of<TopBloc>(context).add(const TopEvent.getTop());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    BlocProvider.of<WorkOrdersBloc>(context)
        .add(const WorkOrdersEvent.getWorkingOrders());
    final colorTheme = AppTheme.of(context).colorTheme;
    _sendActivity(context);
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GestureDetector(
                    onTap: () => _onCatalog(context),
                    child: Container(
                      padding: const EdgeInsets.only(
                          top: 16, bottom: 16, left: 12, right: 12),
                      decoration: BoxDecoration(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(16)),
                          color: colorTheme.paris),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Box(
                            child: Assets.images.home.catalog
                                .svg(fit: BoxFit.cover),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Box(
                                padding: const Pad(left: 12),
                                child: Text(
                                  "Каталог товаров и фирм",
                                  style: TextStyle(
                                      color: colorTheme.parisText,
                                      fontSize: 22,
                                      fontWeight: FontWeight.w700),
                                ),
                              ),
                              Box(
                                padding: const Pad(left: 12, top: 8),
                                width: 270,
                                child: Text(
                                  "Здесь вы сможете выбрать подходящий товар, поставщика, условия покупки и доставки",
                                  style: TextStyle(
                                      height: 1.5,
                                      color: colorTheme.greyBarBottomText,
                                      fontSize: 13,
                                      fontWeight: FontWeight.w400),
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  // GestureDetector(
                  //     onTap: () => _onProfile(context),
                  //     child: const ProfileWidget()),
                  const SizedBox(height: 24),
                  GestureDetector(
                    onTap: () {
                      context.router.push(const FavoriteRoute());
                    },
                    child: Container(
                      padding: const EdgeInsets.only(
                          top: 1, bottom: 12, left: 1, right: 1),
                      decoration: decorationOfBox(context),
                      child: Container(
                        padding: const EdgeInsets.only(
                            top: 16, bottom: 12, left: 12, right: 12),
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(16)),
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Box(
                              child: Icon(
                                Icons.star_border,
                                color: Color.fromRGBO(247, 231, 172, 1),
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Box(
                                  padding: const Pad(left: 12),
                                  child: Text(
                                    "Избранное",
                                    style: TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.w700,
                                      color: colorTheme.blackText,
                                    ),
                                  ),
                                ),
                                Box(
                                  padding: const Pad(left: 12, top: 8),
                                  width: 200,
                                  child: Text(
                                    "Здесь сохранены понравившиеся вам товары и продавцы",
                                    style: TextStyle(
                                        height: 1.5,
                                        color: colorTheme.greyBarBottomText,
                                        fontSize: 13,
                                        fontWeight: FontWeight.w400),
                                  ),
                                )
                              ],
                            ),
                            const Spacer(),
                            Box(
                              child: Assets.images.about.arrow
                                  .svg(fit: BoxFit.cover),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      context.router.push(const MyProductsRoute());
                    },
                    child: Container(
                      height: 70,
                      color: Colors.white,
                      width: double.infinity,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Box(
                            child: Text(
                              "Мои объявления",
                              style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.w700,
                                color: colorTheme.blackText,
                              ),
                            ),
                          ),
                          Box(
                            child: Assets.images.about.arrow
                                .svg(fit: BoxFit.cover),
                          ),
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () => _onOrders(context),
                    child: BlocBuilder<WorkOrdersBloc, WorkOrdersState>(
                        builder: (context, state) =>
                            state.maybeMap(loading: (_) {
                              return const Center(
                                  child: CircularProgressIndicator());
                            }, workingOrdersLoaded: (response) {
                              if (response.response.data.isNotEmpty) {
                                return ExistOrdersWidget(
                                  data: response.response.data,
                                  ordersInWork: response
                                          .response.global_status ??
                                      "  ${response.response.title_status!}",
                                );
                              } else {
                                return const EmptyOrdersWidget();
                              }
                            }, orElse: () {
                              //print("orElse");
                              return const SizedBox();
                            })),
                  ),
                  BlocBuilder<TopBloc, TopState>(
                      builder: (context, state) => state.maybeMap(loading: (_) {
                            return const Center(
                                child: CircularProgressIndicator());
                          }, topLoaded: (response) {
                            if (response.response.prod_top.isNotEmpty) {
                              return Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Expanded(
                                      child: SizedBox(
                                          child: TopWidget(
                                    products: response.response.prod_top,
                                  ))),
                                ],
                              );
                            } else {
                              return const SizedBox();
                            }
                          }, orElse: () {
                            print("orElse");
                            return const SizedBox();
                          })),
                  const SizedBox(height: 4),
                  BlocBuilder<ActionsBloc, ActionsState>(
                      builder: (context, state) => state.maybeMap(loading: (_) {
                            return const Center(
                                child: CircularProgressIndicator());
                          }, actionsLoaded: (response) {
                            if (response.response.actions.isNotEmpty) {
                              return Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Expanded(
                                      child: SizedBox(
                                          child: ActionsWidget(
                                    products: response.response.actions,
                                  ))),
                                ],
                              );
                            } else {
                              return const SizedBox();
                            }
                          }, orElse: () {
                            print("orElse");
                            return const SizedBox();
                          })),
                  const SizedBox(
                    height: 28,
                  ),
                  Text(
                    "Уголок потребителя",
                    style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w700,
                        color: colorTheme.blackText),
                  ),
                  const SizedBox(height: 12),
                  GestureDetector(
                      onTap: () => _onAbout(context),
                      child: const AboutUsWidget()),
                  const SizedBox(height: 24),
                  GestureDetector(
                    onTap: () => _onSupport(context),
                    child: Row(
                      children: [
                        Box(
                          child: Assets.images.home.chat.svg(fit: BoxFit.cover),
                        ),
                        const SizedBox(
                          width: 25,
                        ),
                        Text("Чат с поддержкой",
                            style: TextStyle(
                                color: colorTheme.blackText,
                                fontWeight: FontWeight.w400,
                                fontSize: 17)),
                        const Spacer(),
                        Box(
                          child: Assets.images.main.smallRightArrow
                              .svg(fit: BoxFit.cover),
                        ),
                      ],
                    ),
                  ),
                  Divider(
                    height: 25,
                    thickness: 1,
                    endIndent: 0,
                    color: colorTheme.borderGray,
                  ),
                  GestureDetector(
                    onTap: () => _onSettings(context),
                    child: Row(
                      children: [
                        Box(
                          child: Assets.images.main.settings
                              .svg(fit: BoxFit.cover),
                        ),
                        const SizedBox(
                          width: 25,
                        ),
                        Text("Настройки",
                            style: TextStyle(
                                color: colorTheme.blackText,
                                fontWeight: FontWeight.w400,
                                fontSize: 17)),
                        const Spacer(),
                        Box(
                          child: Assets.images.main.smallRightArrow
                              .svg(fit: BoxFit.cover),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            GestureDetector(
              onTap: () => _onExit(context),
              child: Container(
                height: 64,
                color: colorTheme.lightRed,
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  children: [
                    Box(
                      child: Assets.images.exit.svg(fit: BoxFit.cover),
                    ),
                    const SizedBox(
                      width: 25,
                    ),
                    Text(
                      "Выход",
                      style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w400,
                          color: colorTheme.blackText),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _onCatalog(BuildContext context) {
    context.pushRoute(MainRoute(children: [
      CatalogsRoute(children: [CatalogRoute()]),
    ]));
  }

  void _onProfile(BuildContext context) {
    context.pushRoute(const MainRoute(children: [
      ProfileRoute(),
    ]));
  }

  void _onOrders(BuildContext context) {
    context.pushRoute(const MainRoute(children: [
      OrdersPageRoute(children: [OrdersRoute()]),
    ]));
  }

  void _onExit(BuildContext context) async {
    await SharedPrefsHelper.rememberMe(false);
    context.router.replace(
      const RegistrationBegin(),
    );
  }

  void _sendActivity(BuildContext context) {
    BlocProvider.of<SendActivityBloc>(context)
        .add(const SendActivityEvent.sendActivity(screenName: "Главный экран"));
  }

  void _onSettings(BuildContext context) {
    context.router.push(const SettingsRoute());
  }

  void _onSupport(BuildContext context) {
    context.router.push(const SupportRoute());
  }

  void _onAbout(BuildContext context) {
    context.router.push(AboutRoute());
  }

  BoxDecoration decorationOfBox(BuildContext context) {
    return BoxDecoration(
        color: Colors.transparent,
        borderRadius: const BorderRadius.all(Radius.circular(12)),
        border: Border.all(color: const Color.fromRGBO(247, 231, 172, 1)));
  }
}
