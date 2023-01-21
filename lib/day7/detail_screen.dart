import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailScreen extends StatefulWidget {
  const DetailScreen({super.key});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  int choosen = -1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset('assets/day_7/2_image.png'),
          const SizedBox(
            height: 20,
          ),
          Center(
            child: Text(
              'Arrina La',
              style: GoogleFonts.poppins(
                fontSize: 26,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          const SizedBox(
            height: 2,
          ),
          Center(
            child: Text(
              'Bali, Dekat Bandung',
              style: GoogleFonts.poppins(
                fontSize: 16,
                fontWeight: FontWeight.w300,
              ),
            ),
          ),
          const SizedBox(
            height: 26,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Text(
              'About',
              style: GoogleFonts.poppins(
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Text(
              'Pantai Pandawa adalah salah satu para kawasan wisata di area Kuta selatan sana Kabupaten Dekat Bandung, Bali.',
              style: GoogleFonts.poppins(
                fontSize: 16,
                fontWeight: FontWeight.w300,
              ),
            ),
          ),
          const SizedBox(
            height: 26,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Text(
              'Booking Now',
              style: GoogleFonts.poppins(
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          SizedBox(
            height: 100,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                const SizedBox(
                  width: 24,
                ),
                BookTile(
                  day: 'THU',
                  date: '19 JAN',
                  choosen: choosen == 0,
                  onTap: () => setState(() {
                    choosen = 0;
                  }),
                ),
                BookTile(
                  day: 'FRI',
                  date: '20 JAN',
                  choosen: choosen == 1,
                  onTap: () => setState(() {
                    choosen = 1;
                  }),
                ),
                BookTile(
                  day: 'SAT',
                  date: '21 JAN',
                  choosen: false,
                  available: choosen == 2,
                  onTap: () {},
                ),
                BookTile(
                  day: 'SUN',
                  date: '22 JAN',
                  choosen: choosen == 3,
                  onTap: () => setState(() {
                    choosen = 3;
                  }),
                ),
                BookTile(
                  day: 'MON',
                  date: '23 JAN',
                  choosen: choosen == 4,
                  onTap: () => setState(() {
                    choosen = 4;
                  }),
                ),
              ],
            ),
          ),
        ],
      ),
      bottomSheet: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  '\$22,800',
                  style: GoogleFonts.poppins(
                    fontSize: 22,
                    color: const Color(0XFF3F6DF6),
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  '/night',
                  style: GoogleFonts.poppins(
                    fontSize: 12,
                    color: const Color(0XFF2F323A),
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ],
            ),
            Container(
              height: 60,
              width: 220,
              decoration: BoxDecoration(
                color: const Color(0XFF3F6DF6),
                borderRadius: BorderRadius.circular(19),
              ),
              child: Padding(
                padding: const EdgeInsets.all(7),
                child: Center(
                  child: Text(
                    'Continue',
                    style: GoogleFonts.poppins(
                      fontSize: 18,
                      color: Colors.white,
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

class BookTile extends StatelessWidget {
  const BookTile({
    Key? key,
    required this.day,
    required this.date,
    this.available = true,
    required this.choosen,
    this.onTap,
  }) : super(key: key);

  final String day;
  final String date;
  final bool available;
  final bool choosen;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Stack(
          children: [
            GestureDetector(
              onTap: onTap,
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 24),
                width: 80,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(22),
                  color: available ? Colors.white : const Color(0XFFF4F4F6),
                ),
                child: Column(
                  children: [
                    Text(
                      day,
                      style: GoogleFonts.poppins(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: available ? Colors.black : const Color(0XFFBABAC8),
                      ),
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    Text(
                      date,
                      style: GoogleFonts.poppins(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: available ? Colors.black : const Color(0XFFBABAC8),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            if (choosen)
              Positioned(
                right: 0,
                child: Container(
                  height: 25,
                  width: 27,
                  decoration: const BoxDecoration(
                    color: Color(0XFF3F6DF6),
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(22),
                      bottomLeft: Radius.circular(10),
                    ),
                  ),
                  child: const Icon(
                    Icons.check_rounded,
                    color: Colors.white,
                    size: 16,
                  ),
                ),
              ),
          ],
        ),
        const SizedBox(
          width: 10,
        ),
      ],
    );
  }
}
