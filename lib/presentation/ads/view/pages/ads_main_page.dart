import 'package:assorted_layout_widgets/assorted_layout_widgets.dart';
import 'package:auto_route/auto_route.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:optlove/app/routes/router.gr.dart';
import 'package:optlove/app/theme/bloc/app_theme.dart';
import 'package:optlove/app/utils/functionNetwork.dart';
import 'package:optlove/generated/assets.gen.dart';
import 'package:optlove/presentation/ads/domain/entities/ads_city_response.dart';
import 'package:optlove/presentation/ads/view/bloc/ads/ads_bloc.dart';
import 'package:optlove/presentation/ads/view/pages/ads_category_page.dart';
import 'package:optlove/presentation/ads/view/widgets/show_filter_bottom_sheet.dart';
import 'package:optlove/presentation/registration/domain/entities/user_info_response.dart';

class AdsMainPage extends StatefulWidget {
  const AdsMainPage({super.key});

  @override
  State<AdsMainPage> createState() => _AdsMainPageState();
}

class _AdsMainPageState extends State<AdsMainPage> {
  late ScrollController _controller;

  final TextEditingController _searchProductController =
      TextEditingController();

  var sort = "new";
  var type = "offer";
  final offer = "offer";
  final demand = "demand";
  var _category;

  @override
  void initState() {
    super.initState();
    _controller = ScrollController();
    context.read<AdsBloc>().add(FetchAds(sort: sort, type: type));
  }

  @override
  void dispose() {
    _controller.dispose();
    _searchProductController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final colorTheme = AppTheme.of(context).colorTheme;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: RefreshIndicator(
        color: const Color.fromRGBO(114, 175, 86, 1),
        onRefresh: () async {
          print(type);
          context.read<AdsBloc>().add(FetchAds(sort: sort, type: type));
          setState(() {
            _category = null;
          });
        },
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(
                bottom: MediaQuery.of(context).viewInsets.bottom),
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
                        onTap: () async {
                          // context.router
                          //     .navigate(AdsCategoryRoute(sort: sort, type: type));

                          final selectedCategoryId = await Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  AdsCategoryPage(sort: sort, type: type),
                            ),
                          );
                          setState(() {
                            _category = selectedCategoryId;
                          });

                          if (_category != null) {
                            if (context.mounted) {
                              context.read<AdsBloc>().add(
                                    FetchAds(
                                      sort: sort,
                                      type: type,
                                      category: _category,
                                    ),
                                  );
                            }
                          } else {
                            if (context.mounted) {
                              context
                                  .read<AdsBloc>()
                                  .add(FetchAds(sort: sort, type: offer));
                            }
                          }
                        },
                        child: Stack(
                          children: [
                            Container(
                              padding: const EdgeInsets.all(2),
                              height: 25,
                              width: 25,
                              child: Box(
                                color: Colors.white,
                                child: Assets.images.category.image(
                                  height: 16,
                                  width: 20,
                                ),
                              ),
                            ),
                            _category != null
                                ? Positioned(
                                    right: 0,
                                    top: 0,
                                    child: Container(
                                      height: 8,
                                      width: 8,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(4),
                                          color: Colors.green),
                                    ),
                                  )
                                : const SizedBox()
                          ],
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
                          if (type == demand)
                            {
                              setState(() {
                                type = offer;
                              }),
                              _searchProductController.clear(),
                              context.read<AdsBloc>().add(
                                    FetchAds(
                                      sort: sort,
                                      type: type,
                                      category: _category,
                                    ),
                                  ),
                            }
                        },
                        child: Text(
                          "Предложение",
                          style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.w700,
                              color: () {
                                if (type == demand) {
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
                          if (type == offer)
                            {
                              setState(() {
                                type = demand;
                              }),
                              _searchProductController.clear(),
                              context.read<AdsBloc>().add(
                                    FetchAds(
                                      sort: sort,
                                      type: type,
                                      category: _category,
                                    ),
                                  ),
                            }
                        },
                        child: Text(
                          "Спрос",
                          style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.w700,
                              color: () {
                                if (type == offer) {
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
                          onChanged: (value) {
                            context.read<AdsBloc>().add(
                                  FetchAds(
                                    type: type,
                                    poisk: value,
                                  ),
                                );
                          },
                        ),
                      ),
                      GestureDetector(
                        onTap: () async {
                          final value =
                              await showFilterBottomSheet(context, sort);
                          if (value != null) {
                            setState(() {
                              sort = value;
                            });
                            if (context.mounted) {
                              context.read<AdsBloc>().add(
                                    FetchAds(
                                      sort: sort,
                                      type: type,
                                      category: _category,
                                    ),
                                  );
                            }
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
                  const SizedBox(height: 24),
                  BlocBuilder<AdsBloc, AdsState>(
                    builder: (context, state) {
                      return state.when(
                        initial: () =>
                            const Center(child: Text('Нет объявлений.')),
                        loading: () => const Center(
                          child: CircularProgressIndicator(
                            color: Colors.green,
                          ),
                        ),
                        loaded: (response) {
                          return ListView.separated(
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            itemCount: response.adsList.length,
                            separatorBuilder: (context, index) =>
                                const SizedBox(height: 18),
                            itemBuilder: (context, index) {
                              final ad = response.adsList[index];
                              return Container(
                                width: double.infinity,
                                height: 420,
                                padding: const EdgeInsets.all(8),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(14),
                                  border:
                                      Border.all(color: Colors.grey.shade300),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Image.network(
                                      ad.images.isNotEmpty
                                          ? ad.images.first
                                          : "",
                                      width: 230,
                                      height: 200,
                                      fit: BoxFit.cover,
                                      errorBuilder: (context, url, error) =>
                                          CachedNetworkImage(
                                        imageUrl:
                                            "https://panel.optlav.ru/uploads/defolt.PNG",
                                        width: 230,
                                        height: 200,
                                      ),
                                    ),
                                    const SizedBox(height: 10),
                                    Row(
                                      children: [
                                        Expanded(
                                          child: Text(
                                            ad.name!,
                                            maxLines: 1,
                                            textAlign: TextAlign.left,
                                            style: const TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 22,
                                            ),
                                            overflow: TextOverflow.clip,
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(height: 20),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            FutureBuilder<UserInfoResponse>(
                                              future: getNameUser(ad.phone!,
                                                  ad.user_id!), // async work
                                              builder: (BuildContext context,
                                                  AsyncSnapshot<
                                                          UserInfoResponse>
                                                      snapshot) {
                                                switch (
                                                    snapshot.connectionState) {
                                                  case ConnectionState.waiting:
                                                    return const Text('');
                                                  default:
                                                    if (snapshot.hasError) {
                                                      return const Text("");
                                                    } else {
                                                      return Column(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .start,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Text(
                                                            "Продавец",
                                                            style: TextStyle(
                                                              color: Colors.grey
                                                                  .shade500,
                                                              fontSize: 10,
                                                            ),
                                                          ),
                                                          Text(
                                                            snapshot
                                                                    .data!
                                                                    .user_info
                                                                    .name ??
                                                                "",
                                                            style:
                                                                const TextStyle(
                                                              color:
                                                                  Colors.black,
                                                              fontSize: 10,
                                                            ),
                                                          ),
                                                        ],
                                                      );
                                                    }
                                                }
                                              },
                                            ),
                                            const SizedBox(height: 10),
                                            FutureBuilder<AdsCityResponse>(
                                              future: getCityById(
                                                ad.city_id!,
                                              ), // async work
                                              builder: (BuildContext context,
                                                  AsyncSnapshot<AdsCityResponse>
                                                      snapshot) {
                                                switch (
                                                    snapshot.connectionState) {
                                                  case ConnectionState.waiting:
                                                    return const Text('');
                                                  default:
                                                    if (snapshot.hasError) {
                                                      return const Text("");
                                                    } else {
                                                      return Column(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .start,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Text(
                                                            "Адрес продавца",
                                                            style: TextStyle(
                                                              color: Colors.grey
                                                                  .shade500,
                                                              fontSize: 10,
                                                            ),
                                                          ),
                                                          Text(
                                                            snapshot.data!.city
                                                                    .isNotEmpty
                                                                ? snapshot
                                                                    .data!
                                                                    .city[0]
                                                                    .name!
                                                                : "Все регионы",
                                                            style:
                                                                const TextStyle(
                                                              color:
                                                                  Colors.black,
                                                              fontSize: 10,
                                                            ),
                                                          ),
                                                        ],
                                                      );
                                                    }
                                                }
                                              },
                                            ),
                                          ],
                                        ),
                                        const SizedBox(width: 10),
                                        AutoSizeText(
                                          "${ad.price!} ₽",
                                          style: const TextStyle(
                                            fontSize: 32,
                                            fontWeight: FontWeight.bold,
                                          ),
                                          minFontSize: 28,
                                        ),
                                      ],
                                    ),
                                    const Spacer(),
                                    GestureDetector(
                                      onTap: () {
                                        context.router
                                            .navigate(AdsDetailRoute(ad: ad));
                                      },
                                      child: Container(
                                        height: 40,
                                        width:
                                            MediaQuery.of(context).size.width,
                                        decoration: BoxDecoration(
                                          color: const Color.fromRGBO(
                                              114, 175, 86, 1),
                                          borderRadius:
                                              BorderRadius.circular(12),
                                        ),
                                        alignment: Alignment.center,
                                        child: const Text(
                                          "Подробнее",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 14,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              );
                            },
                          );
                        },
                        failure: (error) => Center(
                          child: Text('Ошибка: ${error.message}'),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
