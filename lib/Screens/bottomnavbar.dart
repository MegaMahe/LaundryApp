// ignore_for_file: unused_import, prefer_const_constructors, unnecessary_new

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:laundry/Screens/Profile.dart';
import 'package:laundry/Screens/address.dart';
import 'package:laundry/Screens/constant.dart';
import 'package:laundry/Screens/home.dart';
import 'package:laundry/Screens/manage_address.dart';
import 'package:laundry/Screens/notification.dart';
import 'package:lazy_load_indexed_stack/lazy_load_indexed_stack.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<StatefulWidget> createState() => _MainPageState();
}

class _MainPageState extends State<BottomNavBar> {
  @override
  void initState() {
    super.initState();
  }

  int _index = 0;
  Future<bool> _onWillPop() async {
    return (await showDialog(
          context: context,
          builder: (context) => AlertDialog(
            elevation: 5,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
            // backgroundColor: Color.fromARGB(255, 250, 242, 230),
            title: new Text('Are you sure ?'),
            content: new Text('Do You Wish To Sign out ?'),
            actions: <Widget>[
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop(false);
                },
                child: new Text(
                  'No',
                  style: TextStyle(color: primarycolor),
                ),
              ),
              TextButton(
                onPressed: () async {
                  Navigator.of(context).pop(true);
                },
                child: Text(
                  'Yes',
                  style: TextStyle(color: primarycolor),
                ),
              ),
            ],
          ),
        )) ??
        false;
  }

  @override
  Widget build(final BuildContext context) {
    return WillPopScope(
      onWillPop: _onWillPop,
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 247, 252, 255),
        body: LazyLoadIndexedStack(
          index: _index,
          children: const [
            Page1(),
            Page2(),
            Page3(),
            Page4(),
          ],
        ),
        bottomNavigationBar: ClipRRect(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          ),
          child: BottomNavigationBar(
            backgroundColor: Colors.white,
            unselectedItemColor: Color.fromARGB(255, 165, 219, 166),
            type: BottomNavigationBarType.fixed,
            selectedItemColor: primarycolor,
            onTap: (index) {
              setState(() => _index = index);
            },
            currentIndex: _index,
            items: const [
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.home,
                  ),
                  label: ''),
              BottomNavigationBarItem(icon: Icon(Icons.dashboard), label: ''),
              BottomNavigationBarItem(
                  icon: Icon(Icons.notifications), label: ''),
              BottomNavigationBarItem(icon: Icon(Icons.person), label: ''),
            ],
          ),
        ),
        //),
      ),
    );
  }
}

class Page1 extends StatelessWidget {
  const Page1({super.key});

  @override
  Widget build(final BuildContext context) {
    return HomeScreen();
  }
}

class Page2 extends StatelessWidget {
  const Page2({super.key});

  @override
  Widget build(final BuildContext context) {
    return ManageAdressScreen();
  }
}

class Page3 extends StatelessWidget {
  const Page3({super.key});

  @override
  Widget build(final BuildContext context) {
    return NotificationScreen();
  }
}

class Page4 extends StatelessWidget {
  const Page4({super.key});

  @override
  Widget build(final BuildContext context) {
    return ProfileScreen();
  }
}
