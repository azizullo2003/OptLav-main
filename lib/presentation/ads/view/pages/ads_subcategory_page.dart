import 'package:assorted_layout_widgets/assorted_layout_widgets.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:optlove/app/routes/router.gr.dart';
import 'package:optlove/app/theme/bloc/app_theme.dart';
import 'package:optlove/generated/assets.gen.dart';
import 'package:optlove/presentation/ads/view/bloc/ads_subcategory_bloc.dart';
import 'package:optlove/presentation/ads/view/widgets/ads_catalog_card.dart';
import 'package:optlove/presentation/main/%20data/models/category.dart';

class AdsSubCategoryPage extends StatefulWidget {
  final String categoryId;
  const AdsSubCategoryPage({super.key, required this.categoryId});

  @override
  State<AdsSubCategoryPage> createState() => _AdsSubCategoryPageState();
}

class _AdsSubCategoryPageState extends State<AdsSubCategoryPage> {
  late ScrollController _controller;

  @override
  void initState() {
    super.initState();
    _controller = ScrollController();
    context.read<AdsSubcategoryBloc>().add(
          FetchSubcategoriesByCategoryId(widget.categoryId),
        );
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
      extendBody: false,
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
                const SizedBox(height: 8),
                Text(
                  "Продажа товаров",
                  style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.w700,
                      color: colorTheme.blackText),
                ),
                const SizedBox(height: 12),
                BlocBuilder<AdsSubcategoryBloc, AdsSubcategoryState>(
                  builder: (context, state) {
                    return state.map(
                      initial: (_) =>
                          const Center(child: Text('Initial state')),
                      loading: (_) => const Center(
                        child: CircularProgressIndicator(color: Colors.green),
                      ),
                      loaded: (state) {
                        final categories = state.response.categories;
                        return GridView.builder(
                          physics: const NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemCount: categories.length,
                          itemBuilder: (context, index) => InkWell(
                            onTap: () => {
                              onCategory(
                                Category(
                                  id: categories[index].id.toString(),
                                  name: categories[index].name.toString(),
                                  count: categories[index].count.toString(),
                                  imagesUrl:
                                      categories[index].images_url.toString(),
                                ),
                              ),
                            },
                            child: AdsCategoryCard(
                              category: categories[index],
                            ),
                          ),
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            mainAxisSpacing: 8,
                            crossAxisSpacing: 8,
                            childAspectRatio: 1.9,
                          ),
                        );
                      },
                      failure: (state) =>
                          Center(child: Text(state.error.message!)),
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

  void onCategory(Category category) {
    context.router.push(
      SubcatalogRoute(category: category),
    );
  }
}
