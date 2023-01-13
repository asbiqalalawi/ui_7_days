import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FormPage1 extends StatelessWidget {
  const FormPage1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff181A20),
      body: Padding(
        padding: const EdgeInsets.all(40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 30,
            ),
            Container(
              padding: const EdgeInsets.all(10),
              height: 50,
              width: 50,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Color(0xffFCAC15),
              ),
              child: Image.asset(
                'assets/day_3/1_euro-circle.png',
              ),
            ),
            const SizedBox(
              height: 80,
            ),
            Text(
              'Welcome back.\nLet’s make money.',
              style: GoogleFonts.poppins(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(
              height: 70,
            ),
            TextFormField(
              style: GoogleFonts.poppins(
                color: Colors.white,
              ),
              decoration: InputDecoration(
                hintText: 'Email',
                hintStyle: GoogleFonts.poppins(color: const Color(0xff6F7075)),
                filled: true,
                fillColor: const Color(0xff262A34),
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(17)),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            TextFormField(
              obscureText: true,
              style: GoogleFonts.poppins(
                color: Colors.white,
              ),
              decoration: InputDecoration(
                  hintText: 'Password',
                  hintStyle: GoogleFonts.poppins(color: const Color(0xff6F7075)),
                  filled: true,
                  fillColor: const Color(0xff262A34),
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(17)),
                  suffixIcon: const Icon(
                    Icons.remove_red_eye_outlined,
                    color: Color(0xff6F7075),
                  )),
            ),
            const SizedBox(
              height: 6,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'Forgot My Password',
                  style: GoogleFonts.poppins(
                    color: const Color(0xff6A6B70),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 117,
            ),
            Container(
              height: 55,
              decoration: BoxDecoration(
                color: const Color(0xffFCAC15),
                borderRadius: BorderRadius.circular(17),
              ),
              child: Center(
                child: Text(
                  'Sign In',
                  style: GoogleFonts.openSans(fontSize: 18),
                ),
              ),
            ),
            const SizedBox(
              height: 47,
            ),
            Center(
              child: RichText(
                text: TextSpan(
                  text: 'Don’t have account? ',
                  style: GoogleFonts.poppins(),
                  children: [
                    TextSpan(
                      text: 'Sign Up',
                      style: GoogleFonts.poppins(
                        decoration: TextDecoration.underline,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
