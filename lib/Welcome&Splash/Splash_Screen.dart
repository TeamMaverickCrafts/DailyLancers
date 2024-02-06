
import 'package:daily_lancers/Welcome&Splash/OnboardingScreen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Delayed navigation function
    Future<void> navigateToNextPage() async {
      await Future.delayed(const Duration(seconds: 3));
      // ignore: use_build_context_synchronously
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => Boarding()),
      );
    }

    // Call the delayed navigation function
    navigateToNextPage();

    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: const Color(0xFFF4FEFF),
        child: Image.asset("assets/logo.png"),
      ),
    );
  }

  boarding() {}
}

// Example of the next page
