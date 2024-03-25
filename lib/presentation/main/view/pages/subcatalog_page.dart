import 'package:assorted_layout_widgets/assorted_layout_widgets.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:optlove/app/routes/router.gr.dart';
import 'package:optlove/presentation/main/%20data/models/product.dart';
import 'package:optlove/presentation/main/%20data/models/subcategory.dart';
import 'package:optlove/presentation/main/view/widgets/subcatalog_card.dart';

import '../../ data/models/category.dart';
import '../../../../app/theme/bloc/app_theme.dart';
import '../../../../generated/assets.gen.dart';
import '../bloc/search_bloc.dart';

class SubcatalogPage extends StatefulWidget {
  final Category category;

  const SubcatalogPage({super.key, required this.category});

  @override
  State<SubcatalogPage> createState() => _SubcatalogPageState();
}

class _SubcatalogPageState extends State<SubcatalogPage> {
  final List<Subcategory> _subcategories = <Subcategory>[];

  @override
  void initState() {
    BlocProvider.of<SearchBloc>(context)
        .add(SearchEvent.getAllSubcategories(widget.category.id));

    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final colorTheme = AppTheme.of(context).colorTheme;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 16, right: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 16),
            GestureDetector(
              onTap: () => {
                BlocProvider.of<SearchBloc>(context)
                    .add(const SearchEvent.getAllCategories()),
                context.router.navigateBack()
              },
              child: Box(
                child: Assets.images.back.svg(fit: BoxFit.cover),
              ),
            ),
            const SizedBox(height: 12),
            Text(
              widget.category.name,
              style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.w700,
                  color: colorTheme.blackText),
            ),
            const SizedBox(height: 12),
            Text(
              "Выберите нужную подкатегорию",
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                  color: colorTheme.greyText),
            ),
            const SizedBox(height: 25),
            BlocBuilder<SearchBloc, SearchState>(
              builder: (context, state) => state.maybeMap(
                  failure: (_) => const SizedBox(),
                  loading: (_) {
                    return const Center(child: CircularProgressIndicator());
                  },
                  subcategoriesLoaded: (response) {
                    print("productsLoaded");
                    _subcategories.clear();
                    if (response.response.subcategories.isNotEmpty) {
                      _subcategories.addAll(response.response.subcategories);
                      return Expanded(
                        child: ListView.builder(
                            primary: false,
                            shrinkWrap: true,
                            itemCount: _subcategories.length,
                            itemBuilder: (BuildContext context, int index) {
                              return SubcatalogCard(
                                onPressed: () {
                                  openProduct(_subcategories[index]);
                                },
                                subcategory: _subcategories[index],
                              );
                            }),
                      );
                    } else {
                      return const Center(
                          child: Text(
                              "Подкатегории с таким названием не найдено"));
                    }
                  },

                  // productsFounded: (response) {
                  //   print("productsFounded");
                  //   _products.clear();
                  //   if (response.response.products.isNotEmpty) {
                  //     _products.addAll(response.response.products);
                  //     return Expanded(
                  //       child: ListView.builder(
                  //           controller: _controller,
                  //           primary: false,
                  //           shrinkWrap: true,
                  //           itemCount: _products.length,
                  //           itemBuilder: (BuildContext context, int index) {
                  //             return SubcatalogCard(
                  //               onPressed: () {},
                  //               product: _products[index],
                  //             );
                  //           }),
                  //     );
                  //   } else {
                  //     return const Center(
                  //         child: Text("Товар с таким названием не неайден"));
                  //   }
                  // },
                  orElse: () {
                    print("Dvsdvsvd");
                    return const Center(child: CircularProgressIndicator());
                  }),
            ),
          ],
        ),
      ),
    );
  }

  void openProduct(Subcategory category) {
    context.router.push(
      ProductsRoute(category: category),
    );
  }
}
