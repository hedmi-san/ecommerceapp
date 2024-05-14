import 'package:ecommerceapp/core/utils/size_config.dart';
import 'package:ecommerceapp/widgets/customButtons.dart';
import 'package:ecommerceapp/widgets/customPageView.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../screens/Auth/presentation/pages/login.dart';
import 'customIndicatore.dart';

class OnBoardingBody extends StatefulWidget {
  const OnBoardingBody({super.key});

  @override
  State<OnBoardingBody> createState() => _OnBoardingBodyState();
}

class _OnBoardingBodyState extends State<OnBoardingBody> {
  PageController? pageController;

  @override
  void initState() {
    super.initState();
    pageController = PageController(initialPage: 0);
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CustomPageView(pageController: pageController),
        Positioned(
          left: 0,
          right: 0,
          bottom: SizeConfig.defaultSize! * 23,
          child: CustomIndicator(
            index: pageController!.hasClients ? pageController!.page as int : 0,
          ),
        ),
        Visibility(
          visible: pageController!.hasClients
              ? (pageController?.page == 2 ? false : true)
              : true,
          child: Positioned(
            top: SizeConfig.defaultSize! * 10,
            right: 32,
            child: const Text(
              'Skip',
              style: TextStyle(
                fontSize: 14,
                color: Color(0xff898989),
              ),
              textAlign: TextAlign.left,
            ),
          ),
        ),
        Positioned(
          left: SizeConfig.defaultSize! * 10,
          right: SizeConfig.defaultSize! * 10,
          bottom: SizeConfig.defaultSize! * 10,
          child: CustonGeneralButton(
            onTap: () {
              if (pageController!.page! < 2) {
                pageController?.nextPage(
                    duration: const Duration(microseconds: 500),
                    curve: Curves.easeIn);
              } else {
                Get.to(() => LoginView(),
                    transition: Transition.rightToLeft,
                    duration: const Duration(microseconds: 500));
              }
            },
            text: pageController!.hasClients
                ? (pageController?.page == 2 ? 'Get Started' : 'Next')
                : 'Next',
          ),
        ),
      ],
    );
  }
}
