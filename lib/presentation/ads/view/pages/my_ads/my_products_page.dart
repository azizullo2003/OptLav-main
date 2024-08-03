// import 'package:assorted_layout_widgets/assorted_layout_widgets.dart';
// import 'package:auto_route/auto_route.dart';
// import 'package:flutter/material.dart';
// import 'package:optlove/app/routes/router.gr.dart';
// import 'package:optlove/app/theme/bloc/app_theme.dart';
// import 'package:optlove/generated/assets.gen.dart';
// import 'package:optlove/presentation/ads/view/widgets/show_filter_bottom_sheet.dart';

// class MyProductsPage extends StatefulWidget {
//   const MyProductsPage({super.key});

//   @override
//   State<MyProductsPage> createState() => _MyProductsPageState();
// }

// class _MyProductsPageState extends State<MyProductsPage> {
//   late ScrollController _controller;

//   final TextEditingController _searchProductController =
//       TextEditingController();

//   var sort = "newest";

//   @override
//   void initState() {
//     super.initState();
//     _controller = ScrollController();
//   }

//   @override
//   void dispose() {
//     _controller.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     final colorTheme = AppTheme.of(context).colorTheme;
//     return Scaffold(
//       resizeToAvoidBottomInset: false,
//       backgroundColor: Colors.white,
//       body: SingleChildScrollView(
//         controller: _controller,
//         child: Padding(
//           padding:
//               EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
//           child: Container(
//             padding: const EdgeInsets.only(left: 16, right: 16),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 const SizedBox(height: 16),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   crossAxisAlignment: CrossAxisAlignment.center,
//                   children: [
//                     InkWell(
//                       onTap: () {
//                         Navigator.pop(context);
//                       },
//                       child: Box(
//                         color: Colors.white,
//                         child: Assets.images.back.svg(
//                           fit: BoxFit.cover,
//                         ),
//                       ),
//                     ),
//                     InkWell(
//                       onTap: () {
//                         context.router.navigate(const AddNewAdsRoute());
//                       },
//                       child: const Box(
//                         color: Colors.white,
//                         child: Icon(
//                           Icons.add,
//                           size: 30,
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//                 const SizedBox(height: 8),
//                 Text(
//                   "Мои объявления",
//                   style: TextStyle(
//                       fontSize: 32,
//                       fontWeight: FontWeight.w700,
//                       color: colorTheme.blackText),
//                 ),
//                 const SizedBox(height: 12),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.start,
//                   crossAxisAlignment: CrossAxisAlignment.center,
//                   children: [
//                     Expanded(
//                       child: TextField(
//                         controller: _searchProductController,
//                         decoration: InputDecoration(
//                           prefixIcon:
//                               Assets.images.search.svg(fit: BoxFit.none),
//                           contentPadding:
//                               const EdgeInsets.symmetric(vertical: 12.0),
//                           filled: true,
//                           fillColor: colorTheme.borderGray,
//                           enabledBorder: const OutlineInputBorder(
//                               borderSide: BorderSide(
//                                   color: Color(0xF3F3F3FF), width: 0.0),
//                               borderRadius:
//                                   BorderRadius.all(Radius.circular(18.0))),
//                           focusedBorder: const OutlineInputBorder(
//                               borderSide: BorderSide(
//                                   color: Color(0xF3F3F3FF), width: 0.0),
//                               borderRadius:
//                                   BorderRadius.all(Radius.circular(16.0))),
//                           hintText: 'Поиск объявления',
//                           hintStyle: TextStyle(
//                             color: colorTheme.greyText,
//                             fontSize: 17,
//                             fontWeight: FontWeight.w400,
//                           ),
//                         ),
//                       ),
//                     ),
//                     GestureDetector(
//                       onTap: () async {
//                         print("pressed");
//                         final value =
//                             await showFilterBottomSheet(context, sort);
//                         if (value != null) {
//                           setState(() {
//                             sort = value;
//                           });
//                           print(sort);
//                         }
//                       },
//                       child: Container(
//                         width: 26,
//                         height: 26,
//                         color: Colors.white,
//                         alignment: Alignment.center,
//                         margin: const EdgeInsets.only(left: 16),
//                         child: Assets.images.filter.image(fit: BoxFit.cover),
//                       ),
//                     ),
//                   ],
//                 ),

//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

// ignore_for_file: use_build_context_synchronously

import 'package:assorted_layout_widgets/assorted_layout_widgets.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:optlove/app/routes/router.gr.dart';
import 'package:optlove/app/theme/bloc/app_theme.dart';
import 'package:optlove/generated/assets.gen.dart';
import 'package:optlove/presentation/ads/view/bloc/ads_bloc.dart';
import 'package:optlove/presentation/ads/view/widgets/show_filter_bottom_sheet.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MyProductsPage extends StatefulWidget {
  const MyProductsPage({super.key});

  @override
  State<MyProductsPage> createState() => _MyProductsPageState();
}

class _MyProductsPageState extends State<MyProductsPage> {
  late ScrollController _controller;
  final TextEditingController _searchProductController =
      TextEditingController();
  var sort = "newest";
  String userId = "";

  Future<void> initUserId() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    final String? userIdPrefs = prefs.getString('userId');
    if (userIdPrefs != null) {
      setState(() {
        userId = userIdPrefs;
      });
      if (context.mounted) {
        context.read<AdsBloc>().add(
              FetchAds(my: false, userId: userId),
            );
      }
    }
  }

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
                      onTap: () {
                        context.router.navigate(const AddNewAdsRoute());
                      },
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
                          context.read<AdsBloc>().add(
                                AdsEvent.fetchAds(
                                  sort: sort,
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
                          context
                              .read<AdsBloc>()
                              .add(AdsEvent.fetchAds(sort: sort));
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
                      loaded: (response) => ListView.separated(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: response.adsList.length,
                        separatorBuilder: (context, index) =>
                            const SizedBox(height: 18),
                        itemBuilder: (context, index) {
                          final ad = response.adsList[index];
                          return Container(
                            width: double.infinity,
                            height: 440,
                            padding: const EdgeInsets.all(8),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(14),
                              border: Border.all(color: Colors.grey.shade300),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Image.network(
                                  ad.images.first,
                                  width: 230,
                                  height: 200,
                                  fit: BoxFit.cover,
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
                                  crossAxisAlignment: CrossAxisAlignment.center,
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
                                            fontSize: 14,
                                          ),
                                        ),
                                        Text(
                                          ad.user_id!,
                                          style: const TextStyle(
                                            color: Colors.black,
                                            fontSize: 14,
                                          ),
                                        ),
                                        const SizedBox(height: 10),
                                        Text(
                                          "Адрес продавца",
                                          style: TextStyle(
                                            color: Colors.grey.shade500,
                                            fontSize: 14,
                                          ),
                                        ),
                                        Text(
                                          ad.city_id!,
                                          style: const TextStyle(
                                            color: Colors.black,
                                            fontSize: 14,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Text(
                                      "${ad.price!} ₽",
                                      style: const TextStyle(
                                        fontSize: 32,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                                const Spacer(),
                                SizedBox(
                                  height: 60,
                                  width: MediaQuery.of(context).size.width,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Expanded(
                                        child: Container(
                                          height: 40,
                                          decoration: BoxDecoration(
                                            color: const Color.fromRGBO(
                                                114, 175, 86, 1),
                                            borderRadius:
                                                BorderRadius.circular(12),
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
                                      const SizedBox(width: 7),
                                      Expanded(
                                        child: Container(
                                          height: 40,
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            border: Border.all(
                                              color: const Color.fromRGBO(
                                                  114, 175, 86, 1),
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(12),
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
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                      ),
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
    );
  }
}
