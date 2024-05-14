import 'package:ecommerceapp/widgets/pageViewitems.dart';
import 'package:flutter/material.dart';

class CustomPageView extends StatelessWidget {
  const CustomPageView({super.key, required this.pageController});
  final PageController? pageController;
  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: pageController,
      children: const [
        PageViewItems(
            title: 'Eshopping',
            description: 'Explore top organic fruits & grab them',
            image: 'assets/images/onboarding1.png'),
        PageViewItems(
            title: 'Delivery on the way',
            description: 'Get your order by speed delivery',
            image: 'assets\images\onboarding2.png'),
        PageViewItems(
            title: 'Delivery arrived',
            description: 'Order is arrived at your Place',
            image: 'assets\images\onboarding3.png'),
      ],
    );
  }
}
