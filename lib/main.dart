import 'package:flutter/material.dart';

import 'screens/splash/presentation/splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'Poppins',
      ),
      title: 'Ecommerce App',
      debugShowCheckedModeBanner: false,
      home: const SplashView(),
    );
  }
}
