import 'dart:async';
import 'package:flutter/material.dart';
import '../on_boarding/on_boarding_screen.dart';
// Replace with your actual path

class WelcomeSplashScreen extends StatefulWidget {
  const WelcomeSplashScreen({Key? key}) : super(key: key);

  @override
  State<WelcomeSplashScreen> createState() => _WelcomeSplashScreenState();
}

class _WelcomeSplashScreenState extends State<WelcomeSplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => OnBoardingScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // You can change this color
      body: Center(
        child: Image.asset(
          'assets/images/trip_go.png', // Make sure this path matches your asset
          width: 200,
          height: 200,
        ),
      ),
    );
  }
}
