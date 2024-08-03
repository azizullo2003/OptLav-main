import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:optlove/presentation/ads/data/models/ads_category_model.dart';
import 'package:optlove/presentation/ads/view/bloc/ads_category_bloc.dart';

Future<AdsCategory?> showSelectAdsCategoryBottomSheet(BuildContext context) {
  return showModalBottomSheet<AdsCategory>(
    context: context,
    isScrollControlled: true,
    backgroundColor: Colors.white,
    builder: (context) {
      context.read<AdsCategoryBloc>().add(const FetchCategories());
      return const AdsCategoryBottomSheet();
    },
  );
}

class AdsCategoryBottomSheet extends StatelessWidget {
  const AdsCategoryBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StatefulBuilder(
      builder: (BuildContext context, StateSetter setState) {
        return Container(
          height: 300,
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
          child: BlocBuilder<AdsCategoryBloc, AdsCategoryState>(
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
