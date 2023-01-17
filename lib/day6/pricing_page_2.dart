import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PricingPage2 extends StatelessWidget {
  const PricingPage2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 28),
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFF0B073E),
              Color(0xFF602880),
            ],
          ),
        ),
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 80, bottom: 24),
              height: 164,
              width: 164,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/day_6/2_illustration.png'),
                ),
              ),
            ),
            Text(
              'Pro Features',
              style: GoogleFonts.poppins(
                fontSize: 22,
                fontWeight: FontWeight.w600,
                color: Colors.white,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              'Unlock the winner modules\nand get more insights',
              style: GoogleFonts.poppins(
                fontSize: 16,
                color: const Color(0xff7F7FAD),
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 50,
            ),
            const SpecsTile(text: 'Unlock Our Top Charts'),
            const SpecsTile(text: 'Save More than 1,000 Docs'),
            const SpecsTile(text: '24/7 Customer Support'),
            const SpecsTile(text: 'Track Company’s Spending'),
            const SizedBox(
              height: 58,
            ),
            Center(
              child: Container(
                height: 55,
                width: 319,
                decoration: BoxDecoration(
                  color: const Color(0xffE57C73),
                  borderRadius: BorderRadius.circular(31),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 40,
                      color: const Color(0xffE57C73).withOpacity(0.5),
                      offset: const Offset(0, 20),
                    ),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.all(7),
                  child: Stack(
                    children: [
                      Center(
                        child: Text(
                          'Subscribe Now',
                          style: GoogleFonts.poppins(
                            fontSize: 16,
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Image.asset(
                          'assets/day_6/2_btn_arrow.png',
                          width: 41,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              'Contact Support',
              style: GoogleFonts.poppins(
                fontSize: 16,
                color: Colors.white,
                decoration: TextDecoration.underline,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SpecsTile extends StatelessWidget {
  const SpecsTile({
    Key? key,
    required this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.asset(
        'assets/day_6/2_ic_check.png',
        width: 26,
      ),
      title: Text(
        text,
        style: GoogleFonts.poppins(
          color: Colors.white,
        ),
      ),
    );
  }
}
