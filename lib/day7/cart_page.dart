import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  int cart1 = 0;
  int cart2 = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFAFAFA),
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 26,
            ),
            Text(
              'My Shopping Cart',
              style: GoogleFonts.poppins(
                fontSize: 22,
                color: const Color(0xff191919),
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Column(
              children: [
                CartCard(
                  image: 'assets/day_7/1_image1.png',
                  title: 'Burger Malleta',
                  subtitle: 'McTheone',
                  price: '\$90.00',
                  value: cart1,
                  removeTap: () => cart1 != 1
                      ? setState(() {
                          cart1--;
                        })
                      : {},
                  addTap: () => setState(() {
                    cart1++;
                  }),
                ),
                const SizedBox(
                  height: 26,
                ),
                CartCard(
                  image: 'assets/day_7/1_image2.png',
                  title: 'Mojito Orange',
                  subtitle: 'The Bar',
                  price: '\$510.00',
                  value: cart2,
                  removeTap: () => cart2 != 1
                      ? setState(() {
                          cart2--;
                        })
                      : {},
                  addTap: () => setState(() {
                    cart2++;
                  }),
                ),
                const SizedBox(
                  height: 26,
                ),
                Container(
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Informations',
                        style: GoogleFonts.poppins(
                          fontSize: 18,
                          color: const Color(0xff191919),
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Sub total',
                            style: GoogleFonts.poppins(
                              fontSize: 16,
                              color: const Color(0xff191919),
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          Text(
                            '\$${(cart1 * 90.00) + (cart2 * 510.00)}',
                            style: GoogleFonts.poppins(
                              fontSize: 16,
                              color: const Color(0xff191919),
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Delivery',
                            style: GoogleFonts.poppins(
                              fontSize: 16,
                              color: const Color(0xff191919),
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          Text(
                            '\$80.0',
                            style: GoogleFonts.poppins(
                              fontSize: 16,
                              color: const Color(0xff191919),
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Total',
                            style: GoogleFonts.poppins(
                              fontSize: 16,
                              color: const Color(0xff191919),
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          Text(
                            '\$${(cart1 * 90.00) + (cart2 * 510.00) + 80.0}',
                            style: GoogleFonts.poppins(
                              fontSize: 16,
                              color: const Color(0xff191919),
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 60,
                ),
                Container(
                  height: 55,
                  width: 319,
                  decoration: BoxDecoration(
                    color: const Color(0xffFFC532),
                    borderRadius: BorderRadius.circular(31),
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 40,
                        color: const Color(0xffFFC532).withOpacity(0.5),
                        offset: const Offset(0, 10),
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(7),
                    child: Center(
                      child: Text(
                        'Checkout Now',
                        style: GoogleFonts.poppins(
                          fontSize: 18,
                          color: const Color(0xff2E221B),
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                Container(
                  height: 55,
                  width: 319,
                  decoration: BoxDecoration(
                    color: const Color(0xffD9D9D9),
                    borderRadius: BorderRadius.circular(31),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(7),
                    child: Center(
                      child: Text(
                        'Save to Wishlist',
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
          ],
        ),
      ),
    );
  }
}

class CartCard extends StatelessWidget {
  const CartCard({
    Key? key,
    required this.image,
    required this.title,
    required this.subtitle,
    required this.price,
    this.removeTap,
    this.addTap,
    required this.value,
  }) : super(key: key);

  final String image;
  final String title;
  final String subtitle;
  final String price;
  final int value;
  final void Function()? removeTap;
  final void Function()? addTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
      ),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                height: 80,
                width: 80,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(image),
                  ),
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              const SizedBox(
                width: 16,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: GoogleFonts.poppins(
                      fontSize: 18,
                      color: const Color(0xff191919),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    subtitle,
                    style: GoogleFonts.poppins(
                      fontSize: 14,
                      color: const Color(0xffA3A8B8),
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ],
              )
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  const SizedBox(
                    width: 6,
                  ),
                  GestureDetector(
                    onTap: removeTap,
                    child: Icon(
                      Icons.remove_circle,
                      size: 22,
                      color: value == 1 ? const Color(0xffD9D9D9) : null,
                    ),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  SizedBox(
                    width: 16,
                    child: Center(
                      child: Text(
                        value.toString(),
                        style: GoogleFonts.poppins(
                          color: const Color(0xff191919),
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  GestureDetector(
                    onTap: addTap,
                    child: const Icon(
                      Icons.add_circle,
                      size: 22,
                    ),
                  ),
                ],
              ),
              Text(
                price,
                style: GoogleFonts.poppins(
                  fontSize: 18,
                  color: const Color(0xff191919),
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
