import 'package:assorted_layout_widgets/assorted_layout_widgets.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:optlove/generated/assets.gen.dart';

import '../../../../app/routes/router.gr.dart';
import '../../../../app/utils/shared_preferences_helper.dart';
import '../widgets/CarouselPage.dart';

class OnboardingPage extends StatefulWidget {

  static final imageAssets = [
    Assets.images.barcode,
    Assets.images.bus,
    Assets.images.time
  ];

  const OnboardingPage({Key? key}) : super(key: key);

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  late final PageController controller;
  int activePage = 0;

  @override
  void initState() {
    controller = PageController(initialPage: 0);
    controller.addListener(
          () => setState(() => activePage = controller.page!.round()),
    );
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    //final colorTheme = AppTheme.of(context).colorTheme;
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        color: Colors.transparent,
        elevation: 0,
        child: Padding(
          padding: const EdgeInsets.only(bottom: 5, left: 16,right: 16),
          child: Row(
            children: [
              if(activePage > 0)
              GestureDetector(
                  onTap: () => _onBack(context), child: const Text('Назад')),
              const Spacer(),
              GestureDetector(
                onTap: () => _onMiss(context),
                  child: const Text("Пропустить"))
            ],
          ),
        ),
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
             Padding(
               padding: const EdgeInsets.only(top: 65),
               child: SizedBox(
                 height: 478,
                 child: PageView(
          controller: controller,
                    children: List.generate(
                      3,
                          (index) => CarouselPage(
                        image: OnboardingPage.imageAssets[index],
                      ),
                    ),
        ),
               ),
             ),
            Box(
              width: double.infinity,
              padding: const Pad(horizontal: 16, top: 30),
              child: ElevatedButton(
                onPressed: () async => await nextOnPressed(context),
                style: ElevatedButton.styleFrom(
                  elevation: 0, backgroundColor: const Color(0xFF5DB248),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    textStyle: const TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold)),
                child: const Text('Далее'),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> nextOnPressed(BuildContext context) async {

    final nextPageIndex = controller.page!.round() + 1;

    if (nextPageIndex == 3) {
      await SharedPrefsHelper.setOBDone(true);
      context.router.push(const RegistrationBegin());
    } else {
      controller.animateToPage(
        nextPageIndex,
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    }
  }

  Future<void> _onBack(BuildContext context) async {

    final nextPageIndex = controller.page!.round() - 1;


      controller.animateToPage(
        nextPageIndex,
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
  }

  Future<void> _onMiss(BuildContext context) async {
    await SharedPrefsHelper.setOBDone(true);
    context.router.push(const RegistrationBegin());
  }
}
