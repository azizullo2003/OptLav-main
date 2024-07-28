import 'package:assorted_layout_widgets/assorted_layout_widgets.dart';
import 'package:flutter/material.dart';
import 'package:optlove/app/theme/bloc/app_theme.dart';
import 'package:optlove/generated/assets.gen.dart';
import 'package:optlove/presentation/main/view/pages/my_ads/add_ads_page.dart';

class MyProductsPage extends StatefulWidget {
  const MyProductsPage({super.key});

  @override
  State<MyProductsPage> createState() => _MyProductsPageState();
}

class _MyProductsPageState extends State<MyProductsPage> {
  late ScrollController _controller;

  final TextEditingController _searchProductController =
      TextEditingController();

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
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const AddNewAdsPage(),
                          ),
                        );
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
                TextField(
                  controller: _searchProductController,
                  decoration: InputDecoration(
                    prefixIcon: Assets.images.search.svg(fit: BoxFit.none),
                    contentPadding: const EdgeInsets.symmetric(vertical: 15.0),
                    filled: true,
                    fillColor: colorTheme.borderGray,
                    enabledBorder: const OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Color(0xF3F3F3FF), width: 0.0),
                        borderRadius: BorderRadius.all(Radius.circular(16.0))),
                    focusedBorder: const OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Color(0xF3F3F3FF), width: 0.0),
                        borderRadius: BorderRadius.all(Radius.circular(16.0))),
                    hintText: 'Поиск объявления',
                    hintStyle: TextStyle(
                      color: colorTheme.greyText,
                      fontSize: 17,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
