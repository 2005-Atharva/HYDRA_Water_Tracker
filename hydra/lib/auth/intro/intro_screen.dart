import 'package:flutter/material.dart';
import 'package:hydra/auth/auth_screen.dart';
import 'package:hydra/auth/intro/intro_screen1.dart';
import 'package:hydra/auth/intro/intro_screen2.dart';
import 'package:hydra/auth/intro/intro_screen3.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class IntroScreen extends StatefulWidget {
  const IntroScreen({super.key});

  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  PageController _controller = PageController();

  // void incremnt() {
  //   setState(() {
  //     _controller= ++_controller;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: _controller,
            children: [
              IntroScreen1(
                onTap: () {
                  _controller.nextPage(
                    duration: const Duration(milliseconds: 500),
                    curve: Curves.easeIn,
                  );
                },
              ),
              IntroScreen2(
                onTap: () {
                  _controller.nextPage(
                    duration: const Duration(milliseconds: 500),
                    curve: Curves.easeIn,
                  );
                },
              ),
              IntroScreen3(
                onTap: () async {
                  // Mark intro as seen
                  SharedPreferences prefs =
                      await SharedPreferences.getInstance();
                  await prefs.setBool('hasSeenIntro', true); // Save the state
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const AuthScreen(),
                    ),
                  );
                },
              )
            ],
          ),
          Container(
            alignment: const Alignment(0, 0.60),
            child: SmoothPageIndicator(
              controller: _controller,
              count: 3,
              effect: ExpandingDotsEffect(
                dotHeight: 8,
                dotWidth: 8,
                activeDotColor: Colors.blue,
                dotColor: Colors.grey.shade300,
              ),
            ),
          )
        ],
      ),
    );
  }
}
