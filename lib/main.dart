import 'package:daily_lancers/BotNav.dart';
import 'package:daily_lancers/HomePage/HomePage.dart';
import 'package:daily_lancers/SplashScreen/splash.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
      // home: BotNav(),
    );
  }
}
