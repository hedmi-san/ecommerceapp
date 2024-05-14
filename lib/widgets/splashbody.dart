import 'package:ecommerceapp/core/utils/size_config.dart';
import 'package:ecommerceapp/screens/onBoarding/presentation/onboarding.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashBody extends StatefulWidget {
  const SplashBody({super.key});

  @override
  State<SplashBody> createState() => _SplashBodyState();
}

class _SplashBodyState extends State<SplashBody>
    with SingleTickerProviderStateMixin {
  AnimationController? animationController;
  Animation<double>? fadingAnimation;
  @override
  void initState() {
    super.initState();
    animationController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 2000));
    fadingAnimation =
        Tween<double>(begin: 0.2, end: 1.0).animate(animationController!);
    animationController?.repeat(reverse: true);
    goToNextView();
  }

  @override
  void dispose() {
    animationController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
      child: Column(
        children: [
          const Spacer(),
          //methode 1
          FadeTransition(
            opacity: fadingAnimation!,
            child: const Text(
              'Fruit Market',
              style: TextStyle(
                fontSize: 51,
                color: const Color(0xffffffff),
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          //methode 2
          // AnimatedBuilder(
          //   animation: fadingAnimation!,
          //   builder: (context, _) => Opacity(
          //     opacity: fadingAnimation?.value,
          //     child: const Text(
          //       'Fruit Market',
          //       style: TextStyle(
          //         fontFamily: 'Poppins',
          //         fontSize: 51,
          //         color: const Color(0xffffffff),
          //         fontWeight: FontWeight.bold,
          //       ),
          //     ),
          //   ),
          // ),
          Image.asset('assets/images/splash_image.png'),
        ],
      ),
    );
  }
}

void goToNextView() {
  Future.delayed(const Duration(seconds: 3));
  Get.to(() => const OnBoardingView(), transition: Transition.fade);
}
