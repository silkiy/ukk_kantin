import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:ukk_kantin_epan/pages/welcome_page_1.dart';
import 'package:page_transition/page_transition.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: 'assets/images/logo.png',
      nextScreen: WelcomePage1(),
      splashIconSize: MediaQuery.of(context).size.width * 0.5,
      centered: true,
      duration: 2100,
      splashTransition: SplashTransition.fadeTransition,
      pageTransitionType: PageTransitionType.fade,
    );
  }
}
