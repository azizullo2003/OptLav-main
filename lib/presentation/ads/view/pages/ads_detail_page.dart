import 'package:assorted_layout_widgets/assorted_layout_widgets.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:optlove/app/utils/functionNetwork.dart';
import 'package:optlove/generated/assets.gen.dart';
import 'package:optlove/presentation/ads/data/models/ads_model.dart';
import 'package:optlove/presentation/ads/domain/entities/ads_city_response.dart';
import 'package:optlove/presentation/registration/domain/entities/user_info_response.dart';

class AdsDetailPage extends StatefulWidget {
  final AdsModel ad;
  const AdsDetailPage({super.key, required this.ad});

  @override
  State<AdsDetailPage> createState() => _AdsDetailPageState();
}

class _AdsDetailPageState extends State<AdsDetailPage> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  @override
  void initState() {
    super.initState();
    _pageController.addListener(() {
      setState(() {
        _currentPage = _pageController.page?.round() ?? 0;
      });
    });
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  Widget _buildIndicator(int count) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(count, (index) {
        return AnimatedContainer(
          duration: const Duration(milliseconds: 300),
          margin: const EdgeInsets.symmetric(horizontal: 4.0),
          height: 6.0,
          width: 6.0,
          decoration: BoxDecoration(
            color: _currentPage == index ? Colors.grey : Colors.grey.shade300,
            borderRadius: BorderRadius.circular(4.0),
          ),
        );
      }),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(
              left: 16,
              right: 16,
              bottom: MediaQuery.of(context).viewInsets.bottom),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 25),
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
              const SizedBox(height: 10),
              SizedBox(
                height: 343,
                width: MediaQuery.of(context).size.width,
                child: PageView.builder(
                  controller: _pageController,
                  itemCount: widget.ad.images.length,
                  itemBuilder: (context, index) {
                    return Image.network(
                      widget.ad.images[index],
                      fit: BoxFit.cover,
                      width: MediaQuery.of(context).size.width,
                      errorBuilder: (context, url, error) => CachedNetworkImage(
                        imageUrl: "https://panel.optlav.ru/uploads/defolt.PNG",
                        width: 230,
                        height: 200,
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(height: 10),
              Center(
                child: _buildIndicator(widget.ad.images.length),
              ),
              const SizedBox(height: 16),
              Text(
                widget.ad.name!,
                maxLines: 1,
                textAlign: TextAlign.left,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                ),
                overflow: TextOverflow.ellipsis,
              ),
              Divider(
                height: 18,
                color: Colors.grey.shade300,
              ),
              const SizedBox(height: 8),
              Text(
                widget.ad.description!,
                textAlign: TextAlign.left,
                style: const TextStyle(
                  fontWeight: FontWeight.normal,
                  fontSize: 14,
                ),
              ),
              const SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      FutureBuilder<UserInfoResponse>(
                        future: getNameUser(
                            widget.ad.phone!, widget.ad.user_id!), // async work
                        builder: (BuildContext context,
                            AsyncSnapshot<UserInfoResponse> snapshot) {
                          switch (snapshot.connectionState) {
                            case ConnectionState.waiting:
                              return const Text('');
                            default:
                              if (snapshot.hasError) {
                                return const Text("");
                              } else {
                                return Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Продавец",
                                      style: TextStyle(
                                        color: Colors.grey.shade500,
                                        fontSize: 10,
                                      ),
                                    ),
                                    Text(
                                      snapshot.data!.user_info.name ?? "",
                                      style: const TextStyle(
                                        color: Colors.black,
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
                          widget.ad.city_id!,
                        ), // async work
                        builder: (BuildContext context,
                            AsyncSnapshot<AdsCityResponse> snapshot) {
                          switch (snapshot.connectionState) {
                            case ConnectionState.waiting:
                              return const Text('');
                            default:
                              if (snapshot.hasError) {
                                return const Text("");
                              } else {
                                return Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Адрес продавца",
                                      style: TextStyle(
                                        color: Colors.grey.shade500,
                                        fontSize: 10,
                                      ),
                                    ),
                                    Text(
                                      snapshot.data!.city.isNotEmpty
                                          ? snapshot.data!.city[0].name!
                                          : "Все регионы",
                                      style: const TextStyle(
                                        color: Colors.black,
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
                      "${widget.ad.price!} ₽",
                      maxLines: 1,
                      style: const TextStyle(
                        fontSize: 36,
                        fontWeight: FontWeight.bold,
                      ),
                      minFontSize: 22,
                    ),
                  ),
                ],
              ),
              GestureDetector(
                onTap: () {
                  _showContactOptions(context);
                },
                child: Container(
                  height: 56,
                  width: MediaQuery.of(context).size.width,
                  margin: const EdgeInsets.only(top: 24, bottom: 16),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: const Color.fromRGBO(114, 175, 86, 1),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: const Text(
                    "Связаться с продавцом",
                    style: TextStyle(
                      fontSize: 17,
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _showContactOptions(BuildContext context) {
    showModalBottomSheet(
      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
      ),
      backgroundColor: Colors.white,
      builder: (context) {
        return Padding(
          padding: const EdgeInsets.only(
              left: 16.0, right: 16.0, top: 12, bottom: 12),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Center(
                child: Container(
                  height: 6,
                  width: 34,
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              const SizedBox(height: 22),
              const Text(
                "Данные продавца",
                maxLines: 1,
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                ),
                overflow: TextOverflow.ellipsis,
              ),
              const SizedBox(height: 30),
              ListTile(
                leading: Assets.images.call
                    .svg(height: 56, width: 56, fit: BoxFit.cover),
                title: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Номер телефона'),
                    SizedBox(height: 10),
                  ],
                ),
                subtitle: Text(widget.ad.phone!),
                titleTextStyle:
                    const TextStyle(color: Colors.grey, fontSize: 17),
                subtitleTextStyle:
                    const TextStyle(color: Colors.black, fontSize: 20),
                contentPadding: EdgeInsets.zero,
                onTap: () {
                  Navigator.pop(context);
                  callSeller(widget.ad.phone!);
                },
              ),
              const SizedBox(height: 22),
              ListTile(
                leading: Assets.images.mail
                    .svg(height: 56, width: 56, fit: BoxFit.cover),
                title: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Электронная почта'),
                    SizedBox(height: 10),
                  ],
                ),
                subtitle: Text(widget.ad.email!),
                titleTextStyle:
                    const TextStyle(color: Colors.grey, fontSize: 17),
                subtitleTextStyle:
                    const TextStyle(color: Colors.black, fontSize: 20),
                contentPadding: EdgeInsets.zero,
                onTap: () {
                  Navigator.pop(context);
                  sendEmail(widget.ad.email!);
                },
              ),
            ],
          ),
        );
      },
    );
  }
}
