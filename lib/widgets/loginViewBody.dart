import 'package:ecommerceapp/constants.dart';
import 'package:ecommerceapp/core/utils/size_config.dart';
import 'package:ecommerceapp/core/utils/spaceWidget.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_icon_class/font_awesome_icon_class.dart';
import 'package:get/get.dart';
import 'customButtons.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const VerticalSpace(10),
        SizedBox(
          height: SizeConfig.defaultSize! * 17,
          child: Image.asset('assets/images/logo.png'),
        ),
        const Text(
          'Fruit Market',
          style: TextStyle(
            fontSize: 51,
            color: mainColor,
            fontWeight: FontWeight.bold,
          ),
        ),
        const Expanded(child: SizedBox()),
        const Row(
          children: [
            Flexible(
              flex: 1,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 8),
                child: Text('test')
                //CustomButtonWithIcon(
                //   // onTap: () {
                //   //   //Get.to(()=> );
                //   // },
                //   text: 'Log in with',
                //   color: Color(0xFF4267B2),
                //   icon: FontAwesomeIcons.google,
                // ),
              ),
            ),
            Flexible(
              flex: 1,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 8),
                child: Text('test')
                // CustomButtonWithIcon(
                //   onTap: () {},
                //   text: 'Log in with',
                //   color: Color(0xFF4267B2),
                //   icon: FontAwesomeIcons.facebookF,
                // ),
              ),
            ),
          ],
        ),
        const Expanded(child: SizedBox()),
      ],
    );
  }
}
