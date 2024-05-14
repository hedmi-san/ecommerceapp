import 'package:ecommerceapp/constants.dart';
import 'package:ecommerceapp/core/utils/size_config.dart';
import 'package:ecommerceapp/core/utils/spaceWidget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustonGeneralButton extends StatelessWidget {
  const CustonGeneralButton(
      {super.key, required this.text, required this.onTap});
  final String text;
  final VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 60,
        width: SizeConfig.screenWidth,
        decoration: BoxDecoration(
          color: mainColor,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Center(
          child: Text(
            text,
            style: const TextStyle(
              fontSize: 14,
              color: Color(0xffffffff),
            ),
          ),
        ),
      ),
    );
  }
}

class CustomButtonWithIcon extends StatelessWidget {
  const CustomButtonWithIcon(
      {super.key,
      required this.text,
      required this.color,
      required this.icon,
      required this.onTap});
  final String? text;
  final Color? color;
  final IconData? icon;
  final VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 60,
        decoration: BoxDecoration(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: const Color(0xFF707070)),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              color: color,
            ),
            const HorizontalSpace(2),
            Text(
              text!,
              style: const TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 12,
                color: Color(0xff000000),
              ),
            )
          ],
        ),
      ),
    );
  }
}
