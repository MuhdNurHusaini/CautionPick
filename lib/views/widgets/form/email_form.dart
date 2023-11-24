// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class EmailForm extends StatelessWidget {
  const EmailForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Color(0xFF364C61),
          border: Border.all(color: Color(0xFF364C61)),
          borderRadius: BorderRadius.circular(8.0)),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 2.0),
        child: TextField(
          decoration: InputDecoration(
            prefixIcon: Icon(
              Icons.email, // Replace with your desired icon
              color: Colors.white,
            ),
            hintText: 'Email',
            hintStyle: TextStyle(color: Color(0xFFA9ABAD)),
            border: InputBorder.none,
          ),
        ),
      ),
    );
  }
}
