import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class IntroScreen2 extends StatelessWidget {
  const IntroScreen2({super.key, required this.onTap});
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(height: 150),
            Image.asset('assets/images/intro2.png'),
            const SizedBox(height: 20),
            Text(
              textAlign: TextAlign.center,
              'Smart Reminders\nTailored to You',
              style: GoogleFonts.inter(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16),
            Text(
              textAlign: TextAlign.center,
              'Quick and easy to set your hydration goal &\nthen track your daily water intake progress.',
              style: GoogleFonts.inter(
                fontSize: 16,
                fontWeight: FontWeight.w300,
              ),
            ),
            // const SizedBox(height: 60),
          ],
        ),
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32),
              child: GestureDetector(
                onTap: onTap,
                child: Container(
                  alignment: Alignment.center,
                  height: 60,
                  width: double.maxFinite,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Text(
                    'Next',
                    style: GoogleFonts.inter(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 50),
          ],
        )
      ],
    );
  }
}
