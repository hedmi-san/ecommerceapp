import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';

import '../constants.dart';

class CustomIndicator extends StatelessWidget {
  CustomIndicator({super.key, required this.index});
  final int index;
  @override
  Widget build(BuildContext context) {
    return DotsIndicator(
      dotsCount: 3,
      position: index,
      decorator: DotsDecorator(
        color: Colors.transparent,
        activeColor: mainColor,
        shape: ContinuousRectangleBorder(
          side: const BorderSide(color: mainColor),
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    );
  }
}
