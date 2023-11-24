// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';

class ResetButton extends StatelessWidget {
  const ResetButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Add navigation logic here
        Navigator.pushNamed(context, '/forgotpass');
      },
      child: Align(
        alignment: Alignment.centerRight,
        child: Text(
          'Forgot Password?',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Color(0xFFA9ABAD),
          ),
        ),
      ),
    );
  }
}
