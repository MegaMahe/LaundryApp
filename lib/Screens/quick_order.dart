import 'package:flutter/material.dart';

import 'constant.dart';

class QuickOrderScreen extends StatefulWidget {
  const QuickOrderScreen({super.key});

  @override
  State<QuickOrderScreen> createState() => _QuickOrderScreenState();
}

class _QuickOrderScreenState extends State<QuickOrderScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[50],
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.blueGrey[50],
        iconTheme: const IconThemeData(color: Colors.green),
        title: Text(
          'Quick Order',
          style: TextStyle(color: primarycolor),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                custombtn(
                    'Today',
                    MaterialStateProperty.all<Color>(
                        const Color.fromARGB(255, 101, 184, 104)),
                    Colors.white,
                    Colors.transparent),
                custombtn(
                    'Tomorrow',
                    MaterialStateProperty.all<Color>(Colors.white),
                    Colors.black,
                    Colors.grey),
                custombtn(
                    'Other',
                    MaterialStateProperty.all<Color>(Colors.white),
                    Colors.black,
                    Colors.grey)
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            custominputfield('Pickup Date'),
            custominputfield('Pickup Time'),
            const Text(
              'Expected Delivery is within 24 hours from the',
              style: TextStyle(color: Colors.grey),
            ),
            const Text(
              'time of pick up',
              style: TextStyle(color: Colors.grey),
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(primarycolor),
                  padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                    const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                  ),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                onPressed: () {},
                child: const Text(
                  'Place Order',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }

  Widget custombtn(String btnname, bgclr, txtclr, borderclr) {
    return SizedBox(
      width: 90,
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: bgclr,
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
                side: BorderSide(color: borderclr)),
          ),
          padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
            const EdgeInsets.symmetric(vertical: 12, horizontal: 12),
          ),
        ),
        onPressed: () {},
        child: Text(
          btnname,
          style: TextStyle(color: txtclr),
        ),
      ),
    );
  }
}
