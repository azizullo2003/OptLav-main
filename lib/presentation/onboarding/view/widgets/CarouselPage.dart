
import 'package:assorted_layout_widgets/assorted_layout_widgets.dart';
import 'package:flutter/material.dart';
import 'package:optlove/generated/assets.gen.dart';

class CarouselPage extends StatelessWidget {
  final SvgGenImage image;

  const CarouselPage({Key? key, required this.image})
      : super(key: key);

  @override
  Widget build(BuildContext context) {


    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Box(

          child: image.svg(
              fit: BoxFit.cover),
        )
      ],
    );
  }
}