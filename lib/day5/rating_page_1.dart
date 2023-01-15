import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RatingPage1 extends StatefulWidget {
  const RatingPage1({super.key});

  @override
  State<RatingPage1> createState() => _RatingPage1State();
}

class _RatingPage1State extends State<RatingPage1> {
  int selectedRating = -1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff181925),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 37),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 80,
            ),
            Center(
              child: Container(
                height: 200,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                ),
                child: Image.asset(
                  'assets/day_5/1_image.png',
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Center(
              child: Text(
                'Pizza Ballado',
                style: GoogleFonts.poppins(
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
              ),
            ),
            const SizedBox(
              height: 4,
            ),
            Center(
              child: Text(
                '\$90,00',
                style: GoogleFonts.poppins(
                  fontSize: 20,
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(
              height: 90,
            ),
            Text(
              'Was it delicious?',
              style: GoogleFonts.poppins(
                fontSize: 18,
                fontWeight: FontWeight.w500,
                color: Colors.white,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                RatingItem(
                  emoticon: '😡',
                  index: 0,
                  selectedRating: selectedRating,
                  onTap: () => setState(() {
                    selectedRating = 0;
                  }),
                ),
                RatingItem(
                  emoticon: '😌',
                  index: 1,
                  selectedRating: selectedRating,
                  onTap: () => setState(() {
                    selectedRating = 1;
                  }),
                ),
                RatingItem(
                  emoticon: '😁',
                  index: 2,
                  selectedRating: selectedRating,
                  onTap: () => setState(() {
                    selectedRating = 2;
                  }),
                ),
                RatingItem(
                  emoticon: '😍',
                  index: 3,
                  selectedRating: selectedRating,
                  onTap: () => setState(() {
                    selectedRating = 3;
                  }),
                ),
              ],
            ),
            const SizedBox(
              height: 90,
            ),
            Center(
              child: Container(
                height: 55,
                width: 211,
                decoration: BoxDecoration(
                  color: const Color(0xff34D186),
                  borderRadius: BorderRadius.circular(60),
                ),
                child: Center(
                  child: Text(
                    'Rate Now',
                    style: GoogleFonts.openSans(
                      fontSize: 16,
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

class RatingItem extends StatefulWidget {
  const RatingItem({
    Key? key,
    required this.emoticon,
    required this.index,
    required this.selectedRating,
    this.onTap,
  }) : super(key: key);

  final String emoticon;
  final int index;
  final int selectedRating;
  final void Function()? onTap;

  @override
  State<RatingItem> createState() => _RatingItemState();
}

class _RatingItemState extends State<RatingItem> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: Container(
        height: 60,
        width: 60,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: widget.index == widget.selectedRating ? Colors.white : const Color(0xff37394D),
        ),
        child: Center(
          child: Text(
            widget.emoticon,
            style: const TextStyle(fontSize: 28),
          ),
        ),
      ),
    );
  }
}
