import 'package:ecommerceapp/core/utils/size_config.dart';
import 'package:flutter/material.dart';

import '../core/utils/spaceWidget.dart';

class PageViewItems extends StatelessWidget {
  const PageViewItems(
      {super.key,
      required this.title,
      required this.description,
      required this.image});
  final String? title;
  final String? description;
  final String? image;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const VerticalSpace(18),
        SizedBox(
          height: SizeConfig.defaultSize! * 21,
          child: Image.asset(image!),
        ),
        const VerticalSpace(2.5),
        Text(
          title!,
          style: const TextStyle(
            fontSize: 20,
            color: Color(0xff2f2e41),
          ),
        ),
        const VerticalSpace(1.1),
        Text(
          description!,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 15,
            color: Color(0xff78787c),
          ),
        ),
      ],
    );
  }
}
