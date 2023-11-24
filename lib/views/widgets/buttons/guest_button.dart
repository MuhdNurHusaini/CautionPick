// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';

class GuestButton extends StatelessWidget {
  const GuestButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 40.0),
      child: GestureDetector(
        onTap: () {
          // Add logic for "Continue as Guest"
          Navigator.pushNamed(context, '/homepage');
        },
        child: Transform.translate(
          offset: Offset(0, 10), // Move button slightly down
          child: Text(
            'Continue as Guest',
            style: TextStyle(
              color: Color(0xFFA9ABAD),
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
