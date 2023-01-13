import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreen1 extends StatelessWidget {
  const SplashScreen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff13131E),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset(
              'assets/day_1/1_logo.png',
              width: 140,
            ),
            Text(
              'VENTURE',
              style: GoogleFonts.dmSerifDisplay(color: Colors.white, fontSize: 32, letterSpacing: 10),
            )
          ],
        ),
      ),
    );
  }
}
