// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Add navigation logic here
        Navigator.pushNamed(context, '/mfa');
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40.0),
        child: Container(
          padding: EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: Color(0xFFFF4B4B),
            borderRadius: BorderRadius.circular(8.0),
          ),
          child: Center(
            child: Text(
              'Login',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w600,
                fontSize: 19,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
