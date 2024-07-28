import 'package:assorted_layout_widgets/assorted_layout_widgets.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:optlove/app/routes/router.gr.dart';
import 'package:optlove/core/widgets/ios_keyboard_done_widget.dart';
import 'package:optlove/presentation/main/%20data/models/category.dart';
import 'package:optlove/presentation/main/view/widgets/catalogs_widget.dart';
import 'package:optlove/presentation/main/view/widgets/companies_widget.dart';
// import 'package:keyboard_utils/keyboard_utils.dart';
// import 'package:keyboard_utils/keyboard_listener.dart' as keyboardListener;
import 'dart:io' show Platform;

import '../../ data/models/company.dart';
import '../../../../app/theme/bloc/app_theme.dart';
import '../../../../generated/assets.gen.dart';
import '../../../sendactivity/bloc/sendactivity_bloc.dart';
import '../bloc/search_bloc.dart';

class CatalogPage extends StatefulWidget {
  final String? companyId;
  final bool? fromCompanyCatalog;

  const CatalogPage({Key? key, this.companyId, this.fromCompanyCatalog})
      : super(key: key);

  @override
  State<CatalogPage> createState() => _CatalogPageState();
}

class _CatalogPageState extends State<CatalogPage> {
  // Переменная состояния: 1 - Товары, 2 - Продавцы
  var current_state = 1;

  late ScrollController _controller;

  double positionOfScroll = 0.0;

  // Hide keyboards btn iOS
  OverlayEntry? overlayEntry;
  // final _keyboardUtils = KeyboardUtils();

  showOverlay(BuildContext context) {
    if (overlayEntry != null) return;
    OverlayState overlayState = Overlay.of(context);
    overlayEntry = OverlayEntry(builder: (context) {
      return Positioned(
          bottom: MediaQuery.of(context).viewInsets.bottom,
          right: 0.0,
          left: 0.0,
          child: const IosKeyboardDoneWidget());
    });

    overlayState.insert(overlayEntry!);
  }

  removeOverlay() {
    if (overlayEntry != null) {
      overlayEntry?.remove();
      overlayEntry = null;
    }
  }
  // END Hide keyboards btn iOS

  @override
  void initState() {
    _controller = ScrollController();
    _controller.addListener(_scrollListener);
    _sendActivity(context);
    BlocProvider.of<SearchBloc>(context)
        .add(const SearchEvent.getAllCategories());
    if (widget.fromCompanyCatalog != null) {
      current_state = 2;
    }
    if (widget.companyId != null) {
      current_state = 2;
      BlocProvider.of<SearchBloc>(context)
          .add(SearchEvent.searchCompanyById(widget.companyId!));
    } else {
      //BlocProvider.of<SearchBloc>(context).add(SearchEvent.getAllCompanies());
    }

    // Hide keyboards btn iOS
    if (Platform.isIOS) {
      // _keyboardUtils.add(
      //     listener: keyboardListener.KeyboardListener(willHideKeyboard: () {
      //       removeOverlay();
      //     }, willShowKeyboard: (double keyboardHeight) {
      //       showOverlay(context);
      //     }));
    }
    // END keyboards btn iOS

    super.initState();
  }

  @override
  void dispose() {
    // keyboards btn iOS
    if (Platform.isIOS) {
      // _keyboardUtils.removeAllKeyboardListeners();
    }
    // END keyboards btn iOS

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final colorTheme = AppTheme.of(context).colorTheme;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        controller: _controller,
        child: Padding(
          padding:
              EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
          child: Container(
            padding: const EdgeInsets.only(left: 16, right: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 16),
                InkWell(
                  onTap: () => {
                    if (widget.companyId == null)
                      {
                        context.router.push(
                          const MainRoute(),
                        )
                      }
                    else
                      {context.router.navigateBack()}
                  },
                  child: Box(
                    child: Assets.images.back.svg(fit: BoxFit.cover),
                  ),
                ),
                const SizedBox(height: 12),
                Text(
                  "Каталог",
                  style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.w700,
                      color: colorTheme.blackText),
                ),
                const SizedBox(height: 12),
                Text(
                  "Выберите нужный товар или продавца",
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                      color: colorTheme.greyText),
                ),
                const SizedBox(height: 25),
                Row(
                  children: [
                    GestureDetector(
                      onTap: () => {
                        if (current_state == 2)
                          {
                            setState(() {
                              current_state = 1;
                            })
                          }
                      },
                      child: Text(
                        "Товары",
                        style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w700,
                            color: () {
                              if (current_state == 2) {
                                return colorTheme.greyText;
                              } else {
                                return colorTheme.blackText;
                              }
                            }()),
                      ),
                    ),
                    const SizedBox(width: 90),
                    GestureDetector(
                      onTap: () => {
                        if (current_state == 1)
                          {
                            setState(() {
                              current_state = 2;
                            })
                          }
                      },
                      child: Text(
                        "Продавцы",
                        style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w700,
                            color: () {
                              if (current_state == 1) {
                                return colorTheme.greyText;
                              } else {
                                return colorTheme.blackText;
                              }
                            }()),
                      ),
                    ),
                  ],
                ),
                Divider(
                  height: 25,
                  thickness: 1,
                  endIndent: 0,
                  color: colorTheme.borderGray,
                ),
                if (current_state == 1) CatalogsWidget(onProduct: _onProducts),
                if (current_state == 2)
                  CompaniesWidget(
                    scrollListener: () => {
                      setState(() {
                        positionOfScroll = _controller.offset;
                      })
                    },
                    scroll: _controller,
                    scrollPosition: positionOfScroll,
                    onCompanyCatalog: _onCompanyCatalog,
                    onCompanyInfo: _onCompanyInfo,
                    fromOrder: () {
                      if (widget.companyId != null) {
                        return true;
                      } else {
                        return null;
                      }
                    }(),
                  )
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _onProducts(Category category) {
    context.router.push(
      SubcatalogRoute(category: category),
    );
    // context.router.push(
    //   ProductsRoute(category: category),
    // );
  }

  void _onCompanyCatalog(Company company) {
    context.router.replace(
      CompanyCatalog(company: company),
    );
  }

  void _onCompanyInfo(Company company) {
    context.router.push(
      CompanyInfoRoute(company: company),
    );
  }

  _scrollListener() {}

  void _sendActivity(BuildContext context) {
    BlocProvider.of<SendActivityBloc>(context).add(
        const SendActivityEvent.sendActivity(
            screenName: "Экран каталога товаров и продавцов"));
  }
}
