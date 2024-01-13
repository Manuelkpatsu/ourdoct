import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ourdoct/screen/onboard/onboard_screen.dart';
import 'package:ourdoct/theme/gradient.dart';

class SplashScreen extends StatefulWidget {
  static const routeName = '/splash';

  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
    _getTimer();
  }

  _getTimer() {
    Timer(const Duration(seconds: 3), () {
      Navigator.of(context).pushReplacementNamed(OnboardScreen.routeName);
    });
  }

  @override
  void dispose() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: SystemUiOverlay.values);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        alignment: Alignment.center,
        decoration: const BoxDecoration(gradient: CustomGradient.backgroundGradient),
        child: Image.asset(
          'assets/images/logo.png',
          width: 200,
          height: 190,
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
