import 'package:flutter/material.dart';
import 'package:laundry/Screens/constant.dart';

class AddressScreen extends StatefulWidget {
  const AddressScreen({super.key});

  @override
  State<AddressScreen> createState() => _AddressScreenState();
}

class _AddressScreenState extends State<AddressScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[50],
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.blueGrey[50],
        iconTheme: const IconThemeData(color: Colors.green),
        title: Text(
          'Add Address',
          style: TextStyle(color: primarycolor),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  placebtn(
                      'Home',
                      MaterialStateProperty.all<Color>(Colors.green),
                      Colors.white),
                  placebtn(
                      'Office',
                      MaterialStateProperty.all<Color>(Colors.white),
                      Colors.black),
                  placebtn(
                      'Others',
                      MaterialStateProperty.all<Color>(Colors.white),
                      Colors.black),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              custominputfield('Address 1'),
              custominputfield('Address 2'),
              custominputfield('Area'),
              custominputfield('City'),
              Card(
                  child: ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Image.asset(
                  'assets/Map.png',
                  height: 180.0,
                  width: double.infinity,
                  fit: BoxFit.fill,
                ),
              )),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  //color: primarycolor,

                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(primarycolor),
                  ),
                  onPressed: () {},
                  child: const Text(
                    'Save location',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ]),
          ),
        ),
      ),
    );
  }

  Widget placebtn(String btnname, bgclr, txtclr) {
    return SizedBox(
      // width: double.infinity,
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: bgclr,
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
