import 'package:assorted_layout_widgets/assorted_layout_widgets.dart';
import 'package:flutter/material.dart';
import 'package:optlove/app/theme/bloc/app_theme.dart';
import 'package:optlove/generated/assets.gen.dart';

class AddNewAdsPage extends StatefulWidget {
  const AddNewAdsPage({super.key});

  @override
  State<AddNewAdsPage> createState() => _AddNewAdsPageState();
}

class _AddNewAdsPageState extends State<AddNewAdsPage> {
  late ScrollController _controller;

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
                  "Создать объявление",
                  style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.w700,
                      color: colorTheme.blackText),
                ),
                const SizedBox(height: 12),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
