import 'package:assorted_layout_widgets/assorted_layout_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:optlove/app/theme/bloc/app_theme.dart';
import 'package:optlove/app/utils/functionNetwork.dart';
import 'package:optlove/generated/assets.gen.dart';
import 'package:optlove/presentation/ads/view/bloc/category/ads_category_bloc.dart';
import 'package:optlove/presentation/ads/view/pages/ads_subcategory_page.dart';

class AdsCategoryPage extends StatefulWidget {
  final String sort;
  final String type;
  const AdsCategoryPage({super.key, required this.sort, required this.type});

  @override
  State<AdsCategoryPage> createState() => _AdsCategoryPageState();
}

class _AdsCategoryPageState extends State<AdsCategoryPage> {
  @override
  void initState() {
    super.initState();
    context.read<AdsCategoryBloc>().add(const FetchCategories());
  }

  @override
  void dispose() {
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
        child: Container(
          padding: EdgeInsets.only(
            left: 16,
            right: 16,
            bottom: MediaQuery.of(context).viewInsets.bottom,
          ),
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
                "Категории",
                style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.w700,
                    color: colorTheme.blackText),
              ),
              const SizedBox(height: 12),
              BlocBuilder<AdsCategoryBloc, AdsCategoryState>(
                builder: (context, state) {
                  return state.when(
                    initial: () => const Center(
                        child: CircularProgressIndicator(
                      color: Colors.green,
                    )),
                    loading: () => const Center(
                        child: CircularProgressIndicator(
                      color: Colors.green,
                    )),
                    loaded: (response) {
                      final categories = response.categories;
                      return SizedBox(
                        height: MediaQuery.of(context).size.height * 0.7,
                        child: ListView.builder(
                          physics: const NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemCount: categories.length,
                          itemBuilder: (context, index) {
                            final category = categories[index];
                            return ListTile(
                              title: Text(category.name),
                              onTap: () async {
                                if (category.id == 1) {
                                  final ResponseSelectionCategory?
                                      responseSelectionCategory =
                                      await Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                AdsSubCategoryPage(
                                              categoryId:
                                                  category.id.toString(),
                                            ),
                                          ));

                                  if (responseSelectionCategory != null) {
                                    if (context.mounted) {
                                      Navigator.pop(
                                          context, responseSelectionCategory);
                                    }
                                  }
                                } else {
                                  Navigator.pop(
                                      context,
                                      ResponseSelectionCategory(
                                          true, category));
                                }
                              },
                            );
                          },
                        ),
                      );
                    },
                    failure: (error) => Center(child: Text('Error: $error')),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
