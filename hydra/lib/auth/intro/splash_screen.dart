import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hydra/auth/auth_screen.dart';
import 'package:hydra/auth/check_auth_or_home_page.dart';
import 'package:hydra/auth/intro/intro_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    splash();
  }

  Future<void> splash() async {
    await Future.delayed(const Duration(seconds: 3));
    //  Navigator.pushReplacement(
    //       context,
    //       MaterialPageRoute(
    //         builder: (context) => IntroScreen(),
    //       ));
    // Check if the intro screen has already been shown
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool hasSeenIntro = prefs.getBool('hasSeenIntro') ?? false;

    // Navigate based on the value of `hasSeenIntro`
    if (hasSeenIntro) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) =>
              const CheckAuthOrHomePage(), // Navigate to AuthScreen
        ),
      );
    } else {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const IntroScreen(), // Navigate to IntroScreen
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset('assets/images/splash_screen.png'),
            Text(
              "H Y D R A",
              style: GoogleFonts.poppins(
                fontSize: 28,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
