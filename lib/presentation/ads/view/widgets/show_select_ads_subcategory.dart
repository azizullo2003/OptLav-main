import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:optlove/presentation/ads/data/models/ads_category_model.dart';
import 'package:optlove/presentation/ads/view/bloc/ads_subcategory_bloc.dart';

Future<AdsCategory?> showSelectAdsSubCategoryBottomSheet(
    BuildContext context, String categoryId) {
  return showModalBottomSheet<AdsCategory>(
    context: context,
    isScrollControlled: true,
    backgroundColor: Colors.white,
    builder: (context) {
      context.read<AdsSubcategoryBloc>().add(
            FetchSubcategoriesByCategoryId(categoryId),
          );
      return const AdsSubCategoryBottomSheet();
    },
  );
}

class AdsSubCategoryBottomSheet extends StatelessWidget {
  const AdsSubCategoryBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StatefulBuilder(
      builder: (BuildContext context, StateSetter setState) {
        return Container(
          height: 300,
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
          child: BlocBuilder<AdsSubcategoryBloc, AdsSubcategoryState>(
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
                  return ListView.builder(
                    itemCount: categories.length,
                    itemBuilder: (context, index) {
                      final category = categories[index];
                      return ListTile(
                        title: Text(category.name),
                        onTap: () {
                          Navigator.of(context).pop(category);
                        },
                      );
                    },
                  );
                },
                failure: (error) => Center(child: Text('Error: $error')),
              );
            },
          ),
        );
      },
    );
  }
}
