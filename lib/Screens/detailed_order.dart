import 'package:flutter/material.dart';
import 'package:laundry/Screens/constant.dart';

class DetailedOrderScreen extends StatefulWidget {
  const DetailedOrderScreen({super.key});

  @override
  State<DetailedOrderScreen> createState() => _DetailedOrderScreenState();
}

class _DetailedOrderScreenState extends State<DetailedOrderScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.blueGrey[50],
        iconTheme: const IconThemeData(color: Colors.green),
        title: Text(
          'Detailed Order',
          style: TextStyle(color: primarycolor),
        ),
        centerTitle: true,
      ),
      backgroundColor: Colors.blueGrey[50],
      body: SafeArea(
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _buildContainer(Icons.home, primarycolor, 30, 'Household'),
                _buildContainer(Icons.man, primarycolor, 30, 'Men'),
                _buildContainer(Icons.woman, primarycolor, 30, 'Women'),
                _buildContainer(
                    Icons.area_chart_sharp, primarycolor, 30, 'Industrials'),
                _buildContainer(
                    Icons.shopping_basket, primarycolor, 30, 'Others'),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Container(
                color: Colors.white,
                child: Column(
                  children: [
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        customsubTitle('Wash'),
                        customsubTitle('Dry Wash'),
                        customsubTitle('Iron'),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    customTile('Pant'),
                    const SizedBox(
                      height: 10,
                    ),
                    customTile('Trouser'),
                    const SizedBox(
                      height: 10,
                    ),
                    customTile('Shirt'),
                    const SizedBox(
                      height: 10,
                    ),
                    customTile('T - Shirt'),
                    const SizedBox(
                      height: 10,
                    ),
                    customTile('Jacket'),
                    const SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8, left: 15, right: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    const Text(
                      "Quantity  : ",
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 14,
                          fontWeight: FontWeight.w600),
                    ),
                    Text(
                      "8",
                      style: TextStyle(
                          color: primarycolor,
                          fontSize: 14,
                          fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
                Row(
                  children: [
                    const Text(
                      "Total Price  : ",
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 14,
                          fontWeight: FontWeight.w600),
                    ),
                    Text(
                      "AED 588",
                      style: TextStyle(
                          color: primarycolor,
                          fontSize: 14,
                          fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(height: 10),
          custombutton("Done", () {}, MediaQuery.of(context).size.width)
        ]),
      ),
    );
  }

  Widget _buildContainer(
      IconData icon, Color color, double size, String lblname) {
    return Column(
      children: [
        Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50), color: Colors.white),
          child: Icon(
            icon,
            color: color,
            size: size,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          lblname,
          style: TextStyle(color: primarycolor, fontSize: 12),
        )
      ],
    );
  }

  Widget customcardssss(Color bgclr, Color borderclr, Color txtclr) {
    return Container(
      height: 50,
      width: 80,
      decoration: BoxDecoration(
        color: bgclr,
        border: Border.all(color: borderclr),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'AED 140',
            style: TextStyle(
                color: txtclr, fontSize: 12, fontWeight: FontWeight.w500),
          ),
          const SizedBox(
            height: 5,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              InkWell(
                onTap: () {
                  // Handle quantity decrement logic
                },
                child: Icon(
                  Icons.remove,
                  color: txtclr,
                  size: 12,
                ),
              ),
              Text(
                '1',
                style: TextStyle(
                    color: txtclr, fontSize: 12, fontWeight: FontWeight.w500),
              ),
              InkWell(
                onTap: () {
                  // Handle quantity increment logic
                },
                child: Icon(
                  Icons.add,
                  color: txtclr,
                  size: 12,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget customsubTitle(String title) {
    return Container(
      height: 50,
      width: 88,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),
      child: Card(
        elevation: 2,
        child: Center(
            child: Text(
          title,
          style: const TextStyle(
              // color: Colors.green,
              fontSize: 12,
              fontWeight: FontWeight.w500),
        )),
      ),
    );
  }

  Widget customTile(String subtitle) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Container(
          height: 50,
          width: 80,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
          ),
          child: Card(
            elevation: 2,
            child: Center(
                child: Text(
              subtitle,
              style: const TextStyle(
                  // color: Colors.green,
                  fontSize: 12,
                  fontWeight: FontWeight.w500),
            )),
          ),
        ),
        customcard(Colors.white, Colors.green, Colors.green),
        customcard(Colors.white, Colors.green, Colors.green),
        customcard(Colors.grey.shade400,
            const Color.fromARGB(255, 204, 203, 203), Colors.white),
      ],
    );
  }

  Widget customcard(Color bgclr, Color borderclr, Color txtclr) {
    return Container(
      height: 50,
      width: 80,
      decoration: BoxDecoration(
        color: bgclr,
        border: Border.all(color: borderclr),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'AED 140',
            style: TextStyle(
                color: txtclr, fontSize: 12, fontWeight: FontWeight.w500),
          ),
          const SizedBox(
            height: 5,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              InkWell(
                onTap: () {
                  // Handle quantity decrement logic
                },
                child: Icon(
                  Icons.remove,
                  color: txtclr,
                  size: 12,
                ),
              ),
              Text(
                '1',
                style: TextStyle(
                    color: txtclr, fontSize: 12, fontWeight: FontWeight.w500),
              ),
              InkWell(
                onTap: () {
                  // Handle quantity increment logic
                },
                child: Icon(
                  Icons.add,
                  color: txtclr,
                  size: 12,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget custombutton(btnname, ontabFunction, double width) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: InkWell(
          onTap: ontabFunction,
          child: Container(
            width: width,
            height: 40,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5), color: primarycolor),
            child: Center(
              child: Text(
                '$btnname',
                style: const TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 255, 255, 255),
                ),
              ),
            ),
          )),
    );
  }
}
