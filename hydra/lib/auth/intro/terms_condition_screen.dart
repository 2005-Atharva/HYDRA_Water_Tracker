import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TermsConditionScreen extends StatelessWidget {
  const TermsConditionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:
            Text('Terms Of Service', style: GoogleFonts.poppins(fontSize: 22)),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 28),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 18),
              Text(
                'Last Updated: 10 Nov 2024',
                style: GoogleFonts.poppins(fontSize: 22),
              ),
              const SizedBox(height: 8),
              Text(
                'Welcome to Hydra! By using our application, you agree to the following terms and conditions. Please read them carefully before using the app.',
                style: GoogleFonts.poppins(
                  fontSize: 18,
                  fontWeight: FontWeight.w300,
                ),
              ),

              //1...
              const SizedBox(height: 18),
              Text(
                'Acceptance of Terms',
                style: GoogleFonts.poppins(fontSize: 22),
              ),
              const SizedBox(height: 8),
              Text(
                'By accessing or using Hydra, you agree to be bound by these Terms and Conditions. If you do not agree with any part of these terms, you must not use the app.',
                style: GoogleFonts.poppins(
                  fontSize: 18,
                  fontWeight: FontWeight.w300,
                ),
              ),

              //2....
              const SizedBox(height: 18),
              Text(
                'Use of the App',
                style: GoogleFonts.poppins(fontSize: 22),
              ),
              const SizedBox(height: 8),
              Text(
                '1. Hydra is intended to help users track their daily water intake and monitor their hydration history.',
                style: GoogleFonts.poppins(
                  fontSize: 18,
                  fontWeight: FontWeight.w300,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                '2. You must use the app responsibly and ensure that any information you provide is accurate.',
                style: GoogleFonts.poppins(
                  fontSize: 18,
                  fontWeight: FontWeight.w300,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                '3.The app is not a substitute for professional health advice. Consult a healthcare provider for personalized hydration or health recommendations.',
                style: GoogleFonts.poppins(
                  fontSize: 18,
                  fontWeight: FontWeight.w300,
                ),
              ),

              //4...
              const SizedBox(height: 18),
              Text(
                'User Accounts',
                style: GoogleFonts.poppins(fontSize: 22),
              ),
              const SizedBox(height: 8),
              Text(
                '1. To use certain features, you may be required to create an account using email and password or sign in with a third-party provider such as Google.',
                style: GoogleFonts.poppins(
                  fontSize: 18,
                  fontWeight: FontWeight.w300,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                '2. You are responsible for maintaining the confidentiality of your login credentials and all activities that occur under your account.',
                style: GoogleFonts.poppins(
                  fontSize: 18,
                  fontWeight: FontWeight.w300,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                '3.Notify us immediately if you suspect unauthorized use of your account.',
                style: GoogleFonts.poppins(
                  fontSize: 18,
                  fontWeight: FontWeight.w300,
                ),
              ),

              //5...
              const SizedBox(height: 18),
              Text(
                'Data Collection and Privacy',
                style: GoogleFonts.poppins(fontSize: 22),
              ),
              const SizedBox(height: 8),
              Text(
                '1. We collect and store certain personal information, such as your email address, water intake data, and usage history, to provide app functionality.',
                style: GoogleFonts.poppins(
                  fontSize: 18,
                  fontWeight: FontWeight.w300,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                '2. You are responsible for ensuring the security of your device and access to the app.',
                style: GoogleFonts.poppins(
                  fontSize: 18,
                  fontWeight: FontWeight.w300,
                ),
              ),

              //6...
              const SizedBox(height: 18),
              Text(
                'Disclaimer of Medical Advice',
                style: GoogleFonts.poppins(fontSize: 22),
              ),
              const SizedBox(height: 8),
              Text(
                '1. The app provides hydration tracking based on user inputs and is not intended to diagnose, treat, cure, or prevent any disease.',
                style: GoogleFonts.poppins(
                  fontSize: 18,
                  fontWeight: FontWeight.w300,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                '2. Always consult a qualified healthcare professional for specific health-related advice.',
                style: GoogleFonts.poppins(
                  fontSize: 18,
                  fontWeight: FontWeight.w300,
                ),
              ),

              //7...
              const SizedBox(height: 18),
              Text(
                'Changes to the App and Terms',
                style: GoogleFonts.poppins(fontSize: 22),
              ),
              const SizedBox(height: 8),
              Text(
                '1. We reserve the right to modify or discontinue the app at any time without notice.',
                style: GoogleFonts.poppins(
                  fontSize: 18,
                  fontWeight: FontWeight.w300,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                '2. These Terms and Conditions may be updated periodically. Continued use of the app constitutes your acceptance of the updated terms.',
                style: GoogleFonts.poppins(
                  fontSize: 18,
                  fontWeight: FontWeight.w300,
                ),
              ),

              //8...
              const SizedBox(height: 18),
              Text(
                'Contact Us',
                style: GoogleFonts.poppins(fontSize: 22),
              ),
              const SizedBox(height: 8),
              Text(
                'If you have any questions about these Terms and Conditions, please contact us at:',
                style: GoogleFonts.poppins(
                  fontSize: 18,
                  fontWeight: FontWeight.w300,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                'Email : []',
                style: GoogleFonts.poppins(
                  fontSize: 18,
                  fontWeight: FontWeight.w300,
                ),
              ),
              Text(
                'Develop By : Atharva Girme',
                style: GoogleFonts.poppins(
                  fontSize: 18,
                  fontWeight: FontWeight.w300,
                ),
              ),
              const SizedBox(height: 38),
            ],
          ),
        ),
      ),
    );
  }
}
