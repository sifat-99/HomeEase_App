import 'package:flutter/material.dart';
import 'dart:async';
import 'package:HomeEase/AppUtils/app_images.dart';
import 'package:HomeEase/Presentation/Screens/Onboarding/welcome_to_fixit_screen.dart';
/*
App Name: HomeEase
Description: Home Services Booking Platform
Author: Made by team HomeEase
Date: November 2025
Team Members name: Nahid Hasan, Labiba Liaqute, Sadia Akter, Kanis Fatema, Maymuna Parvin
*/

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    navigateTOWelcomeScreen();
  }

  navigateTOWelcomeScreen() {
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const WelcomeToFixitScreen(),
        ),
      );
    });
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          colors: [
            Colors.white,
            Colors.blue.shade300,
          ],
        ),
      ),
      child: Center(
        child: Image.asset(
          AppImages.logofixitImg,
        ),
      ),
    );
  }
}
