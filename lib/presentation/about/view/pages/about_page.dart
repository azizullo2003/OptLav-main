import 'package:assorted_layout_widgets/assorted_layout_widgets.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:optlove/presentation/about/view/bloc/about_bloc.dart';
import 'package:optlove/presentation/about/view/widtgets/about_item.dart';

import '../../../../app/routes/router.gr.dart';
import '../../../../app/theme/bloc/app_theme.dart';
import '../../../../generated/assets.gen.dart';
import '../../data/models/about_block.dart';

class AboutPage extends StatefulWidget {
  const AboutPage({Key? key}) : super(key: key);

  @override
  State<AboutPage> createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  AboutBlock? block;

  @override
  Widget build(BuildContext context) {
    BlocProvider.of<AboutBloc>(context).add(const AboutEvent.getAbout());
    final colorTheme = AppTheme.of(context).colorTheme;
    return BlocBuilder<AboutBloc, AboutState>(
        builder: (context, state) => state.maybeMap(
              loading: (_) {
                return const Center(child: CircularProgressIndicator());
              },
              orElse: () {
                return const Center(child: CircularProgressIndicator());
              },
              loaded: (response) {
                block = response.response.blok1[0];
                return Scaffold(
                  body: SingleChildScrollView(
                    child: Container(
                      padding: const EdgeInsets.all(16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          InkWell(
                            onTap: () => context.router.push(
                              const MainRoute(),
                            ),
                            child: Box(
                              child: Assets.images.back.svg(fit: BoxFit.cover),
                            ),
                          ),
                          const SizedBox(height: 12),
                          Text(
                            "О нас",
                            style: TextStyle(
                                fontSize: 32,
                                fontWeight: FontWeight.w700,
                                color: colorTheme.blackText),
                          ),
                          const SizedBox(height: 36),
                          AboutItem(
                              onPage: () => context.router
                                  .push(AboutInfoRoute(block: block!.zero)),
                              title: block!.zero.header),
                          Divider(
                            height: 30,
                            thickness: 1,
                            endIndent: 0,
                            color: colorTheme.borderGray,
                          ),
                          AboutItem(
                              onPage: () => context.router
                                  .push(AboutInfoRoute(block: block!.one)),
                              title: block!.one.header),
                          Divider(
                            height: 30,
                            thickness: 1,
                            endIndent: 0,
                            color: colorTheme.borderGray,
                          ),
                          AboutItem(
                              onPage: () => context.router
                                  .push(AboutInfoRoute(block: block!.two)),
                              title: block!.two.header),
                          Divider(
                            height: 30,
                            thickness: 1,
                            endIndent: 0,
                            color: colorTheme.borderGray,
                          ),
                          AboutItem(
                              onPage: () => context.router
                                  .push(AboutInfoRoute(block: block!.thee)),
                              title: block!.thee.header),
                          Divider(
                            height: 30,
                            thickness: 1,
                            endIndent: 0,
                            color: colorTheme.borderGray,
                          ),
                          AboutItem(
                              onPage: () => context.router
                                  .push(AboutInfoRoute(block: block!.four)),
                              title: block!.four.header),
                          Divider(
                            height: 30,
                            thickness: 1,
                            endIndent: 0,
                            color: colorTheme.borderGray,
                          ),
                          const SizedBox(height: 20),
                          Center(
                            child: Box(
                              child: Assets.images.about.logo
                                  .svg(fit: BoxFit.cover),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ));
  }
}
