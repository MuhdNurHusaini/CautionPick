// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class PassForm extends StatelessWidget {
  const PassForm({super.key});

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
          obscureText: true,
          decoration: InputDecoration(
            prefixIcon: Icon(
              Icons.key_off, // Replace with your desired icon
              color: Colors.white,
            ),
            hintText: 'Password',
            hintStyle: TextStyle(color: Color(0xFFA9ABAD)),
            border: InputBorder.none,
          ),
        ),
      ),
    );
  }
}

class ConfirmPassForm extends StatelessWidget {
  const ConfirmPassForm({super.key});

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
          obscureText: true,
          decoration: InputDecoration(
            prefixIcon: Icon(
              Icons.key_off, // Replace with your desired icon
              color: Colors.white,
            ),
            hintText: 'Confirm password',
            hintStyle: TextStyle(color: Color(0xFFA9ABAD)),
            border: InputBorder.none,
          ),
        ),
      ),
    );
  }
}
