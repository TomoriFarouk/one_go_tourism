import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:one_go_tourism/Screens/Onboarding/loginpage.dart';
import 'package:one_go_tourism/Screens/introduction_screen.dart';
import 'package:one_go_tourism/main.dart';
import 'package:page_transition/page_transition.dart';

class Splash extends StatefulWidget {
  static const String id = 'Splashscreenpage';
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: 'assets/Travas Logo.jpg',
      animationDuration: const Duration(
        milliseconds: 2500,
      ),
      // duration: 100,
      backgroundColor: Colors.white,
      centered: true,
      nextScreen: initScreen == 0 || initScreen == null
          ? const OnboardingPage()
          : LoginPage(),
      splashTransition: SplashTransition.fadeTransition,
      pageTransitionType: PageTransitionType.rightToLeft,
    );
  }
}
