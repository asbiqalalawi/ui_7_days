import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PricingPage1 extends StatefulWidget {
  const PricingPage1({super.key});

  @override
  State<PricingPage1> createState() => _PricingPage1State();
}

class _PricingPage1State extends State<PricingPage1> {
  int select = -1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 40,
            ),
            Container(
              width: 100,
              height: 100,
              padding: const EdgeInsets.all(30),
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Color(0xffFBD7FF),
              ),
              child: Image.asset(
                'assets/day_6/1_crown.png',
              ),
            ),
            const SizedBox(
              height: 48,
            ),
            Text(
              'Which one you wish to Upgrade?',
              style: GoogleFonts.poppins(
                fontSize: 22,
                fontWeight: FontWeight.w600,
                color: const Color(0xff191919),
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 50,
            ),
            PriceTile(
              isSelected: select == 0 ? true : false,
              onTap: () => setState(() {
                select = 0;
              }),
              image: 'assets/day_6/1_security.png',
              title: 'Money Security',
              subtitle: 'support',
              subtitle2: '24/7',
            ),
            const SizedBox(
              height: 24,
            ),
            PriceTile(
              isSelected: select == 1 ? true : false,
              onTap: () => setState(() {
                select = 1;
              }),
              image: 'assets/day_6/automation.png',
              title: 'Automation',
              subtitle: 'we provide',
              subtitle2: 'Invoice',
            ),
            const SizedBox(
              height: 24,
            ),
            PriceTile(
              isSelected: select == 2 ? true : false,
              onTap: () => setState(() {
                select = 2;
              }),
              image: 'assets/day_6/1_balance.png',
              title: 'Balance Report',
              subtitle: 'can up to',
              subtitle2: '10k',
            ),
          ],
        ),
      ),
      bottomSheet: Container(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 21),
        height: 70,
        color: const Color(0xff5343C2),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Upgrade Now',
              style: GoogleFonts.poppins(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: Colors.white,
              ),
            ),
            const Icon(
              Icons.arrow_circle_right_outlined,
              color: Colors.white,
            )
          ],
        ),
      ),
    );
  }
}

class PriceTile extends StatelessWidget {
  const PriceTile({
    Key? key,
    required this.isSelected,
    required this.image,
    required this.title,
    required this.subtitle,
    required this.subtitle2,
    this.onTap,
  }) : super(key: key);

  final bool isSelected;
  final void Function()? onTap;
  final String image;
  final String title;
  final String subtitle;
  final String subtitle2;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 100,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(39),
          border: Border.all(
            color: Color(isSelected ? 0xff5343C2 : 0xffD9DEEA),
            width: 1,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Row(
            children: [
              Image.asset(
                image,
                width: 60,
              ),
              const SizedBox(
                width: 8,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: const Color(0xff191919),
                    ),
                  ),
                  RichText(
                    text: TextSpan(
                      text: subtitle,
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w300,
                        color: const Color(0xffA3A8B8),
                      ),
                      children: [
                        TextSpan(
                          text: ' $subtitle2',
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w500,
                            color: const Color(0xff5343C2),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              const Spacer(),
              if (isSelected)
                Container(
                  height: 26,
                  width: 26,
                  decoration: const BoxDecoration(
                    color: Color(0xff5343C2),
                    shape: BoxShape.circle,
                  ),
                  child: const Icon(
                    Icons.check,
                    color: Colors.white,
                    size: 20,
                  ),
                ),
              const SizedBox(
                width: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
