import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:google_fonts/google_fonts.dart';

class GetStartedPage2 extends StatelessWidget {
  const GetStartedPage2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF8F8F8),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Health First.',
                style: GoogleFonts.poppins(
                  fontSize: 24,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              Text(
                'Exercise together with our best community fit in the world',
                style: GoogleFonts.poppins(color: const Color(0xff828284)),
              ),
              const SizedBox(
                height: 60,
              ),
              StaggeredGrid.count(
                crossAxisCount: 2,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
                children: [
                  StaggeredGridTile.count(
                    crossAxisCellCount: 1,
                    mainAxisCellCount: 1.5,
                    child: Image.asset(
                      'assets/day_2/2_pic1.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                  StaggeredGridTile.count(
                    crossAxisCellCount: 1,
                    mainAxisCellCount: 1,
                    child: Image.asset(
                      'assets/day_2/2_pic2.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                  StaggeredGridTile.count(
                    crossAxisCellCount: 1,
                    mainAxisCellCount: 1.5,
                    child: Image.asset(
                      'assets/day_2/2_pic4.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                  StaggeredGridTile.count(
                    crossAxisCellCount: 1,
                    mainAxisCellCount: 1,
                    child: Image.asset(
                      'assets/day_2/2_pic3.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 40,
              ),
              Container(
                height: 55,
                decoration: const BoxDecoration(
                  color: Color(0xffAFEA0D),
                ),
                child: Center(
                  child: Text(
                    'Shape My Body',
                    style: GoogleFonts.lato(fontSize: 18),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Center(
                child: Text(
                  'Terms & Conditions',
                  style: GoogleFonts.poppins(
                    color: const Color(
                      0xff757575,
                    ),
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
