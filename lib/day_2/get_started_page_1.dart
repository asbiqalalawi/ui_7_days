import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GetStartedPage1 extends StatelessWidget {
  const GetStartedPage1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton.large(
        onPressed: () {},
        backgroundColor: const Color(0xff877BFB),
        child: const Icon(Icons.login_sharp),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: Stack(
        children: [
          Image.asset('assets/day_2/1_background.png'),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                'Maximize Revenue',
                style: GoogleFonts.poppins(
                  fontSize: 24,
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              Text(
                'Gain more profit from cryptocurrency without any risk involved',
                style: GoogleFonts.poppins(
                  fontSize: 16,
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 185,
              ),
            ],
          )
        ],
      ),
    );
  }
}
