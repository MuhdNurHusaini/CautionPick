// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';

class PinInput extends StatelessWidget {
  const PinInput({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Pinput(
          defaultPinTheme: PinTheme(
              width: 60,
              height: 70,
              decoration: BoxDecoration(
                  color: Color(0xFF364C61),
                  borderRadius: BorderRadius.circular(8.0))),
          length: 4,
        ),
      ],
    );
  }
}
