import 'package:flutter/material.dart';
import 'package:hydra/services/functions/auth_function.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              AuthFunction().signOut();
            },
            child: Text('Logout')),
      ),
    );
  }
}
