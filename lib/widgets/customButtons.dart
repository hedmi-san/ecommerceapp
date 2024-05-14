import 'package:ecommerceapp/constants.dart';
import 'package:ecommerceapp/core/utils/size_config.dart';
import 'package:flutter/material.dart';

class CustonGeneralButton extends StatelessWidget {
  const CustonGeneralButton({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}
