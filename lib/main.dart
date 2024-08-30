import 'package:flutter/material.dart';
import 'package:shopping_app/screens/introScreens/login_screen.dart';
import 'package:shopping_app/screens/introScreens/splash_screen.dart';
import 'package:shopping_app/screens/mainScreens/payment_method_screen.dart';
import 'package:shopping_app/utils/constant.dart';

import 'screens/navigator/navigation_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Ecommerce Shopping",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: mainColor),
      home: const SplashScreen(),
    );
  }
}

// LoginScreen