import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:hydra/auth/auth_screen.dart';
import 'package:hydra/pages/home_page.dart';

class CheckAuthOrHomePage extends StatelessWidget {
  const CheckAuthOrHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return HomePage();
          } else {
            return AuthScreen();
          }
        },
      ),
    );
  }
}
