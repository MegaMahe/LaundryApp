// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:laundry/Screens/address.dart';

import 'constant.dart';

class ManageAdressScreen extends StatefulWidget {
  const ManageAdressScreen({super.key});

  @override
  State<ManageAdressScreen> createState() => _ManageAdressScreenState();
}

class _ManageAdressScreenState extends State<ManageAdressScreen> {
  List<Address> addresses = [
    Address(
      address: 'Home',
      area: 'No-28/361, Ahmed Nagar',
      city: 'Birer Dist, Gujrat',
      pincode: '300110',
    ),
    Address(
      address: 'Home',
      area: 'No-28/361, Ahmed Nagar',
      city: 'Birer Dist, Gujrat',
      pincode: '300110',
    ),
    Address(
      address: 'Home',
      area: 'No-28/361, Ahmed Nagar',
      city: 'Birer Dist, Gujrat',
      pincode: '300110',
    ),
    Address(
      address: 'Home',
      area: 'No-28/361, Ahmed Nagar',
      city: 'Birer Dist, Gujrat',
      pincode: '300110',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.grey[50],
        iconTheme: const IconThemeData(color: Colors.green),
        title: Text(
          'Manage Address',
          style: TextStyle(color: primarycolor),
        ),
        automaticallyImplyLeading: false,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              ListView.builder(
                shrinkWrap: true,
                itemCount: addresses.length,
                itemBuilder: (context, index) {
                  Address currentAddress = addresses[index];

                  return Column(
                    children: [
                      Card(
                        elevation: 2.0,

                        // margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15)),
                        child: SizedBox(
                          height: 100,
                          child: ListTile(
                            title: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "${currentAddress.address},",
                                      style: TextStyle(
                                          color: primarycolor, fontSize: 14),
                                    ),
                                    Text(
                                      "${currentAddress.area},",
                                      style: TextStyle(
                                          color: primarycolor, fontSize: 14),
                                    ),
                                    Text(
                                      "${currentAddress.city},",
                                      style: TextStyle(
                                          color: primarycolor, fontSize: 14),
                                    ),
                                    Text(
                                      "${currentAddress.pincode},",
                                      style: TextStyle(
                                          color: primarycolor, fontSize: 14),
                                    ),
                                  ],
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    const Icon(
                                      Icons.cancel_outlined,
                                      color: Colors.red,
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    Icon(
                                      Icons.edit_document,
                                      color: primarycolor,
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                    ],
                  );
                },
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  //color: primarycolor,

                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(primarycolor),
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const AddressScreen(),
                        ));
                  },
                  child: const Text(
                    'Add New Address',
                    style: TextStyle(color: Colors.white),
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

class Address {
  final String address;
  final String area;
  final String city;
  final String pincode;

  Address({
    required this.address,
    required this.area,
    required this.city,
    required this.pincode,
  });
}
