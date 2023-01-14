import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class EmptyPage1 extends StatelessWidget {
  const EmptyPage1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF8F8F8),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 28, vertical: 50),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 98,
            ),
            Center(
              child: Container(
                height: 210,
                width: 240,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                ),
                child: Image.asset(
                  'assets/day_4/1_illustration.png',
                ),
              ),
            ),
            const SizedBox(
              height: 100,
            ),
            Center(
              child: Text(
                'Success Order',
                style: GoogleFonts.poppins(
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                  color: const Color(0xff0E1954),
                ),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Center(
              child: Text(
                'We will delivery your package\nas soon as possible',
                style: GoogleFonts.poppins(
                  fontSize: 16,
                  color: const Color(0xff0E1954),
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Center(
              child: Container(
                height: 55,
                width: 200,
                decoration: BoxDecoration(
                  color: const Color(0xffF94593),
                  borderRadius: BorderRadius.circular(17),
                ),
                child: Center(
                  child: Text(
                    'Done',
                    style: GoogleFonts.openSans(
                      fontSize: 18,
                      color: const Color(0xffF8F8F8),
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
