import 'package:flutter/material.dart';

class SplashBody extends StatelessWidget {
  const SplashBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Spacer(),
          Text(
            'Fruit Market',
            style: TextStyle(
              fontFamily: 'Poppins',
              fontSize: 51,
              color: const Color(0xffffffff),
              fontWeight: FontWeight.bold,
            ),
          ),
          Image.asset('assets/images/splash_image.png'),
        ],
      ),
    );
  }
}
