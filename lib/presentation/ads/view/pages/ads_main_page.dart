import 'package:assorted_layout_widgets/assorted_layout_widgets.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:optlove/app/routes/router.gr.dart';
import 'package:optlove/app/theme/bloc/app_theme.dart';
import 'package:optlove/generated/assets.gen.dart';
import 'package:optlove/presentation/ads/view/widgets/show_filter_bottom_sheet.dart';

class AdsMainPage extends StatefulWidget {
  const AdsMainPage({super.key});

  @override
  State<AdsMainPage> createState() => _AdsMainPageState();
}

class _AdsMainPageState extends State<AdsMainPage> {
  late ScrollController _controller;

  final TextEditingController _searchProductController =
      TextEditingController();

  var currentState = 1;

  var sort = "newest";

  @override
  void initState() {
    super.initState();
    _controller = ScrollController();
  }

  @override
  void dispose() {
    _controller.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final colorTheme = AppTheme.of(context).colorTheme;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding:
              EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
          child: Container(
            padding: const EdgeInsets.only(left: 16, right: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 25),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: () {
                        context.router.navigate(const AdsCategoryRoute());
                      },
                      child: Box(
                        color: Colors.white,
                        child: Assets.images.category.image(
                          height: 16,
                          width: 20,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                Text(
                  "Объявления",
                  style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.w700,
                      color: colorTheme.blackText),
                ),
                const SizedBox(height: 14),
                Row(
                  children: [
                    GestureDetector(
                      onTap: () => {
                        if (currentState == 2)
                          {
                            setState(() {
                              currentState = 1;
                            })
                          }
                      },
                      child: Text(
                        "Предложение",
                        style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w700,
                            color: () {
                              if (currentState == 2) {
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
                        if (currentState == 1)
                          {
                            setState(() {
                              currentState = 2;
                            })
                          }
                      },
                      child: Text(
                        "Спрос",
                        style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w700,
                            color: () {
                              if (currentState == 1) {
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
                const SizedBox(height: 4),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      child: TextField(
                        controller: _searchProductController,
                        decoration: InputDecoration(
                          prefixIcon:
                              Assets.images.search.svg(fit: BoxFit.none),
                          contentPadding:
                              const EdgeInsets.symmetric(vertical: 12.0),
                          filled: true,
                          fillColor: colorTheme.borderGray,
                          enabledBorder: const OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color(0xF3F3F3FF), width: 0.0),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(18.0))),
                          focusedBorder: const OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color(0xF3F3F3FF), width: 0.0),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(18.0))),
                          hintText: 'Поиск объявления',
                          hintStyle: TextStyle(
                            color: colorTheme.greyText,
                            fontSize: 17,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () async {
                        print("pressed");
                        final value =
                            await showFilterBottomSheet(context, sort);
                        if (value != null) {
                          setState(() {
                            sort = value;
                          });
                          print(sort);
                        }
                      },
                      child: Container(
                        color: Colors.white,
                        margin: const EdgeInsets.only(left: 16),
                        child: Assets.images.filter.image(
                          height: 24,
                          width: 24,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
