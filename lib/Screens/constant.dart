import 'package:flutter/material.dart';

Color primarycolor = const Color(0xFF438344);
Color bgcolor = const Color(0xfff6fdf6);

Widget custominputfield(String hint) {
  return Column(
    children: [
      TextFormField(
        decoration: InputDecoration(
            hintText: hint,
            isDense: true,
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide.none),
            fillColor: Colors.white,
            filled: true),
      ),
      const SizedBox(
        height: 10,
      )
    ],
  );
}
