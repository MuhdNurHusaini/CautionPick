// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class VerifyButton extends StatelessWidget {
  const VerifyButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Add navigation logic here
        Navigator.pushNamed(context, '/homepage');
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40.0),
        child: Container(
          padding: EdgeInsets.all(14),
          decoration: BoxDecoration(
            color: Color(0xFFFF4B4B),
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Center(
            child: Text(
              'Verify account',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w600,
                fontSize: 18,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
