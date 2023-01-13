import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FormPage2 extends StatelessWidget {
  const FormPage2({super.key});

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
              height: 30,
            ),
            Center(
              child: Container(
                height: 279,
                width: 245,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                ),
                child: Image.asset(
                  'assets/day_3/2_3d_illustration.png',
                ),
              ),
            ),
            const SizedBox(
              height: 53,
            ),
            Text(
              'Email Address',
              style: GoogleFonts.openSans(
                color: const Color(0xff17171A),
              ),
            ),
            const SizedBox(
              height: 6,
            ),
            TextFormField(
              style: GoogleFonts.openSans(),
              decoration: InputDecoration(
                hintText: 'Email',
                hintStyle: GoogleFonts.openSans(color: const Color(0xff6F7075)),
                filled: true,
                fillColor: const Color(0xffF3F3F3),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(71),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              'Password',
              style: GoogleFonts.openSans(
                color: const Color(0xff17171A),
              ),
            ),
            const SizedBox(
              height: 6,
            ),
            TextFormField(
              obscureText: true,
              style: GoogleFonts.openSans(),
              decoration: InputDecoration(
                hintText: 'Password',
                hintStyle: GoogleFonts.openSans(color: const Color(0xff6F7075)),
                filled: true,
                fillColor: const Color(0xffF3F3F3),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(71),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Container(
              height: 55,
              decoration: BoxDecoration(
                color: const Color(0xff5468FF),
                borderRadius: BorderRadius.circular(60),
              ),
              child: Center(
                child: Text(
                  'Log In',
                  style: GoogleFonts.openSans(
                    fontSize: 18,
                    color: const Color(0xffF8F8F8),
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Container(
              height: 55,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(60),
                border: Border.all(color: const Color(0xffCFCFCF)),
              ),
              child: Center(
                child: Text(
                  'Create New Account',
                  style: GoogleFonts.openSans(
                    fontSize: 18,
                    color: const Color(0xffCFCFCF),
                    fontWeight: FontWeight.w600,
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
