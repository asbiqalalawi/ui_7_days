import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class EmptyPage2 extends StatelessWidget {
  const EmptyPage2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff1B1B33),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Container(
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
              ),
              child: Image.asset(
                'assets/day_4/2_illustration.png',
              ),
            ),
          ),
          const SizedBox(
            height: 68,
          ),
          Center(
            child: Text(
              'Boost Profit!',
              style: GoogleFonts.poppins(
                fontSize: 24,
                fontWeight: FontWeight.w600,
                color: Colors.white,
              ),
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          Center(
            child: Text(
              'Our tools are helping business\nto grow much faster',
              style: GoogleFonts.poppins(
                fontSize: 16,
                color: Colors.white,
                fontWeight: FontWeight.w300,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(
            height: 60,
          ),
          Center(
            child: Container(
              height: 65,
              width: 65,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/day_4/2_btn.png'),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
