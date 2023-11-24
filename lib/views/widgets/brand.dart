// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';

class Brand extends StatelessWidget {
  const Brand({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: 'Caution',
            style: TextStyle(
              color: Color(0xFFFF4B4B),
              fontFamily: 'Gotag',
              fontWeight: FontWeight.bold,
              fontSize: 40,
            ),
          ),
          TextSpan(
            text: 'Pick',
            style: TextStyle(
              color: Colors.white,
              fontFamily: 'Gotag',
              fontWeight: FontWeight.bold,
              fontSize: 40,
            ),
          ),
        ],
      ),
    );
  }
}
