import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RatingPage2 extends StatefulWidget {
  const RatingPage2({super.key});

  @override
  State<RatingPage2> createState() => _RatingPage2State();
}

class _RatingPage2State extends State<RatingPage2> {
  int selectedRating = -1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 37),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 100,
            ),
            Center(
              child: Container(
                height: 200,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                ),
                child: Image.asset(
                  'assets/day_5/2_illustration.png',
                ),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Center(
              child: Text(
                'Enjoy Your Meal',
                style: GoogleFonts.poppins(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: const Color(0xff121622),
                ),
              ),
            ),
            const SizedBox(
              height: 6,
            ),
            Center(
              child: Text(
                'Please rate our experience',
                style: GoogleFonts.poppins(
                  fontSize: 16,
                  color: const Color(0xff808EAB),
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () => setState(() {
                    selectedRating = 0;
                  }),
                  child: Image.asset(
                    'assets/day_5/2_star.png',
                    width: 50,
                    color: selectedRating >= 0 ? const Color(0xffFFC648) : const Color(0xffF8F8F8),
                  ),
                ),
                GestureDetector(
                  onTap: () => setState(() {
                    selectedRating = 1;
                  }),
                  child: Image.asset(
                    'assets/day_5/2_star.png',
                    width: 50,
                    color: selectedRating >= 1 ? const Color(0xffFFC648) : const Color(0xffF8F8F8),
                  ),
                ),
                GestureDetector(
                  onTap: () => setState(() {
                    selectedRating = 2;
                  }),
                  child: Image.asset(
                    'assets/day_5/2_star.png',
                    width: 50,
                    color: selectedRating >= 2 ? const Color(0xffFFC648) : const Color(0xffF8F8F8),
                  ),
                ),
                GestureDetector(
                  onTap: () => setState(() {
                    selectedRating = 3;
                  }),
                  child: Image.asset(
                    'assets/day_5/2_star.png',
                    width: 50,
                    color: selectedRating >= 3 ? const Color(0xffFFC648) : const Color(0xffF8F8F8),
                  ),
                ),
                GestureDetector(
                  onTap: () => setState(() {
                    selectedRating = 4;
                  }),
                  child: Image.asset(
                    'assets/day_5/2_star.png',
                    width: 50,
                    color: selectedRating >= 4 ? const Color(0xffFFC648) : const Color(0xffF8F8F8),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 36,
            ),
            TextFormField(
              maxLines: 4,
              decoration: InputDecoration(
                hintText: 'Your message',
                hintStyle: GoogleFonts.poppins(),
                filled: true,
                fillColor: const Color(0xffF8F8F8),
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(17),
                ),
              ),
            ),
            const SizedBox(
              height: 36,
            ),
            Center(
              child: Container(
                height: 55,
                width: 319,
                decoration: BoxDecoration(
                  color: const Color(0xff4074E6),
                  borderRadius: BorderRadius.circular(13),
                ),
                child: Center(
                  child: Text(
                    'Submit Review',
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
