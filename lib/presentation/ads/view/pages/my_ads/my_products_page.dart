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
import 'package:optlove/presentation/ads/view/bloc/ads/ads_fetch_my_ads_bloc.dart';
import 'package:optlove/presentation/ads/view/bloc/ads/delete_ad_bloc.dart';
import 'package:optlove/presentation/ads/view/pages/my_ads/edit_ads_page.dart';
import 'package:optlove/presentation/ads/view/widgets/delete_ads_alert_dialog.dart';
import 'package:optlove/presentation/ads/view/widgets/show_filter_bottom_sheet.dart';

class MyProductsPage extends StatefulWidget {
  const MyProductsPage({super.key});

  @override
  State<MyProductsPage> createState() => _MyProductsPageState();
}

class _MyProductsPageState extends State<MyProductsPage> {
  late ScrollController _controller;
  final TextEditingController _searchProductController =
      TextEditingController();
  var sort = "new";

  @override
  void initState() {
    super.initState();
    _controller = ScrollController();
    _fetchAds();
  }

  @override
  void dispose() {
    _controller.dispose();
    _searchProductController.dispose();
    super.dispose();
  }

  void _fetchAds() {
    context.read<AdsFetchMyAdsBloc>().add(FetchMyAds(sort: sort));
  }

  Future<void> _navigateAndRefresh() async {
    await context.router.push(const AddNewAdsRoute());
    await Future.delayed(const Duration(milliseconds: 500));
    _fetchAds();
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
          _fetchAds();
        },
        child: SingleChildScrollView(
          controller: _controller,
          child: Padding(
            padding: EdgeInsets.only(
                bottom: MediaQuery.of(context).viewInsets.bottom),
            child: Container(
              padding: const EdgeInsets.only(left: 16, right: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Box(
                          color: Colors.white,
                          child: Assets.images.back.svg(
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: _navigateAndRefresh,
                        child: const Box(
                          color: Colors.white,
                          child: Icon(
                            Icons.add,
                            size: 30,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  Text(
                    "Мои объявления",
                    style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.w700,
                        color: colorTheme.blackText),
                  ),
                  const SizedBox(height: 12),
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
                                    BorderRadius.all(Radius.circular(16.0))),
                            hintText: 'Поиск объявления',
                            hintStyle: TextStyle(
                              color: colorTheme.greyText,
                              fontSize: 17,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          onChanged: (value) {
                            context.read<AdsFetchMyAdsBloc>().add(
                                  FetchMyAds(sort: sort, poisk: value),
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
                              context.read<AdsFetchMyAdsBloc>().add(
                                    FetchMyAds(
                                      sort: sort,
                                    ),
                                  );
                            }
                          }
                        },
                        child: Container(
                          width: 26,
                          height: 26,
                          color: Colors.white,
                          alignment: Alignment.center,
                          margin: const EdgeInsets.only(left: 16),
                          child: Assets.images.filter.image(fit: BoxFit.cover),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 24),
                  BlocBuilder<AdsFetchMyAdsBloc, AdsFetchMyAdsState>(
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
                              return Stack(
                                children: [
                                  Container(
                                    width: double.infinity,
                                    height: 420,
                                    padding: const EdgeInsets.all(8),
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(14),
                                      border: Border.all(
                                          color: Colors.grey.shade300),
                                    ),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
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
                                                Text(
                                                  "Продавец",
                                                  style: TextStyle(
                                                    color: Colors.grey.shade500,
                                                    fontSize: 10,
                                                  ),
                                                ),
                                                Text(
                                                  ad.name_firm ?? "",
                                                  style: const TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 10,
                                                  ),
                                                ),
                                                const SizedBox(height: 10),
                                                FutureBuilder<AdsCityResponse>(
                                                  future: getCityById(
                                                    ad.city_id!,
                                                  ), // async work
                                                  builder: (BuildContext
                                                          context,
                                                      AsyncSnapshot<
                                                              AdsCityResponse>
                                                          snapshot) {
                                                    switch (snapshot
                                                        .connectionState) {
                                                      case ConnectionState
                                                            .waiting:
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
                                                                style:
                                                                    TextStyle(
                                                                  color: Colors
                                                                      .grey
                                                                      .shade500,
                                                                  fontSize: 10,
                                                                ),
                                                              ),
                                                              Text(
                                                                snapshot
                                                                        .data!
                                                                        .city
                                                                        .isNotEmpty
                                                                    ? snapshot
                                                                        .data!
                                                                        .city[0]
                                                                        .name!
                                                                    : "Все регионы",
                                                                style:
                                                                    const TextStyle(
                                                                  color: Colors
                                                                      .black,
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
                                            Flexible(
                                              child: AutoSizeText(
                                                "${ad.price!} ₽",
                                                style: const TextStyle(
                                                  fontSize: 32,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                                minFontSize: 26,
                                                maxLines: 1,
                                              ),
                                            ),
                                          ],
                                        ),
                                        const Spacer(),
                                        SizedBox(
                                          height: 60,
                                          width:
                                              MediaQuery.of(context).size.width,
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceEvenly,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Expanded(
                                                child: GestureDetector(
                                                  onTap: () async {
                                                    await Navigator.push(
                                                      context,
                                                      MaterialPageRoute(
                                                        builder: (context) =>
                                                            EditAdsPage(
                                                                ads: ad),
                                                      ),
                                                    );
                                                    await Future.delayed(
                                                        const Duration(
                                                            milliseconds: 500));

                                                    _fetchAds();
                                                  },
                                                  child: Container(
                                                    height: 40,
                                                    decoration: BoxDecoration(
                                                      color:
                                                          const Color.fromRGBO(
                                                              114, 175, 86, 1),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              12),
                                                    ),
                                                    alignment: Alignment.center,
                                                    child: const Text(
                                                      "Изменить",
                                                      style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 14,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              const SizedBox(width: 7),
                                              Expanded(
                                                child: GestureDetector(
                                                  onTap: () async {
                                                    bool? result =
                                                        await showDialog<bool>(
                                                      context: context,
                                                      builder: (context) {
                                                        return deleteAdsAlertDialog(
                                                            context);
                                                      },
                                                    );
                                                    if (result == true) {
                                                      if (context.mounted) {
                                                        context
                                                            .read<
                                                                DeleteAdBloc>()
                                                            .add(
                                                              DeleteAdEvent
                                                                  .deleteAd(
                                                                      adId: ad
                                                                          .id!),
                                                            );
                                                        await Future.delayed(
                                                            const Duration(
                                                                milliseconds:
                                                                    500));
                                                        context
                                                            .read<
                                                                AdsFetchMyAdsBloc>()
                                                            .add(FetchMyAds(
                                                                sort: sort));
                                                      }
                                                    }
                                                  },
                                                  child: Container(
                                                    height: 40,
                                                    decoration: BoxDecoration(
                                                      color: Colors.white,
                                                      border: Border.all(
                                                        color: const Color
                                                            .fromRGBO(
                                                            114, 175, 86, 1),
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              12),
                                                    ),
                                                    alignment: Alignment.center,
                                                    child: const Text(
                                                      "Удалить",
                                                      style: TextStyle(
                                                        color: Color.fromRGBO(
                                                            114, 175, 86, 1),
                                                        fontSize: 14,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Positioned(
                                    top: 18,
                                    right: 18,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      children: [
                                        Container(
                                          height: 24,
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 10),
                                          margin:
                                              const EdgeInsets.only(bottom: 2),
                                          decoration: BoxDecoration(
                                            color: ad.status! == "Публикуется"
                                                ? const Color.fromRGBO(
                                                    114, 175, 86, 1)
                                                : const Color.fromRGBO(
                                                    211, 187, 75, 1),
                                            borderRadius:
                                                BorderRadius.circular(8),
                                          ),
                                          alignment: Alignment.center,
                                          child: Text(
                                            ad.status!,
                                            style: const TextStyle(
                                              color: Colors.white,
                                              fontSize: 12,
                                            ),
                                          ),
                                        ),
                                        ad.status! == "Публикуется"
                                            ? Container(
                                                height: 24,
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                        horizontal: 10),
                                                margin: const EdgeInsets.only(
                                                    top: 2),
                                                decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  borderRadius:
                                                      BorderRadius.circular(8),
                                                  border: Border.all(
                                                    color: const Color.fromRGBO(
                                                        114, 175, 86, 1),
                                                  ),
                                                ),
                                                alignment: Alignment.center,
                                                child: Text(
                                                  "Осталось ${calculateDaysLeft(ad.end_at!)} дней",
                                                  style: const TextStyle(
                                                    color: Color.fromRGBO(
                                                        114, 175, 86, 1),
                                                    fontSize: 12,
                                                  ),
                                                ),
                                              )
                                            : const SizedBox()
                                      ],
                                    ),
                                  ),
                                ],
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
