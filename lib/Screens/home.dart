import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:laundry/Screens/constant.dart';
import 'package:laundry/Screens/detailed_order.dart';
import 'package:laundry/Screens/quick_order.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgcolor,
      // drawer: const Drawer(surfaceTintColor: Colors.green),
      appBar: AppBar(
        backgroundColor: bgcolor,
        iconTheme: const IconThemeData(color: Colors.green),
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Image.asset('assets/menuicon.png',
              color: primarycolor, fit: BoxFit.cover),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(15.0),
              child: Image.asset(
                'assets/Banner.png',
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.asset(
                'assets/ontime.png',
                height: 100.0,
                fit: BoxFit.fill,
                width: double.infinity,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                btn('Quick Order', Icons.bolt_outlined,
                    const QuickOrderScreen()),
                const SizedBox(width: 16),
                btn('Detailed Order', Icons.info_outline_rounded,
                    const DetailedOrderScreen()),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              alignment: Alignment.centerLeft,
              child: Text(
                'Your Orders',
                style: GoogleFonts.rubik(
                    color: const Color(0xff008445),
                    fontSize: 18,
                    fontWeight: FontWeight.w600),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            ordercard(),
            const SizedBox(
              height: 10,
            ),
            ordercard()
          ]),
        ),
      ),
    );
  }

  Widget ordercard() {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: SizedBox(
        height: MediaQuery.of(context).size.height * 0.30,
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset(
                'assets/Ring.png',
                height: 100,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Order Number:234567B',
                    style: GoogleFonts.rubik(
                        color: const Color(0xff008445),
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        letterSpacing: 0.1),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    'Confirmed',
                    style: GoogleFonts.rubik(
                      color: Colors.grey,
                      fontSize: 15,
                    ),
                  ),
                ],
              )
            ],
          ),
          const Divider(
            color: Colors.grey,
            indent: 30,
            endIndent: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Collection',
                    style: GoogleFonts.rubik(
                        color: const Color(0xff008445),
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        letterSpacing: 0.5),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Date : 22-04-22',
                    style: GoogleFonts.rubik(
                        color: Colors.grey,
                        fontSize: 13,
                        fontWeight: FontWeight.w400),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    'Time : 9.30AM',
                    style: GoogleFonts.rubik(
                        color: Colors.grey,
                        fontSize: 13,
                        fontWeight: FontWeight.w400),
                  )
                ],
              ),
              Container(
                width: 0.5,
                height: 45,
                color: Colors.grey,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Delivery',
                    style: GoogleFonts.rubik(
                        color: const Color(0xff008445),
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        letterSpacing: 0.5),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Date : 22-04-22',
                    style: GoogleFonts.rubik(
                        color: Colors.grey,
                        fontSize: 13,
                        fontWeight: FontWeight.w400),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    'Time : 11.00AM',
                    style: GoogleFonts.rubik(
                        color: Colors.grey,
                        fontSize: 13,
                        fontWeight: FontWeight.w400),
                  )
                ],
              )
            ],
          ),
        ]),
      ),
    );
  }

  Widget btn(String btnname, IconData icon, screen) {
    return SizedBox(
      width: 160,
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor:
              MaterialStateProperty.all<Color>(const Color(0xFF438344)),
          padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
            const EdgeInsets.symmetric(vertical: 12, horizontal: 12),
          ),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => screen,
              ));
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Icon(
              icon,
              color: Colors.white,
            ),
            Text(
              btnname,
              style: const TextStyle(color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
