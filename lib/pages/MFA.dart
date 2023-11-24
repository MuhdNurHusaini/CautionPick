// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';

class MFA extends StatelessWidget {
  const MFA({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF2C3E50),
      appBar: AppBar(
        backgroundColor: Color(0xFF2C3E50),
        automaticallyImplyLeading: false,
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // WELCOME TITLE
              // RichText(
              //   text: TextSpan(
              //     children: [
              //       TextSpan(
              //         text: 'Caution',
              //         style: TextStyle(
              //           color: Color(0xFFFF4B4B),
              //           fontFamily: 'Gotag',
              //           fontWeight: FontWeight.bold,
              //           fontSize: 40,
              //         ),
              //       ),
              //       TextSpan(
              //         text: 'Pick',
              //         style: TextStyle(
              //           color: Colors.white,
              //           fontFamily: 'Gotag',
              //           fontWeight: FontWeight.bold,
              //           fontSize: 40,
              //         ),
              //       ),
              //     ],
              //   ),
              // ),
              // SizedBox(height: 32),

              Text(
                'Verification',
                style: TextStyle(
                    fontFamily: 'Gotag',
                    fontSize: 40,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),

              Text(
                'Enter the code sent to the number :',
                style: TextStyle(
                  fontSize: 15,
                  color: Color(0xFFA9ABAD),
                ),
              ),
              SizedBox(height: 16),

              // PHONE NUMBER
              Text(
                '+6012 345 6789',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  color: Color(0xFFA9ABAD),
                ),
              ),
              SizedBox(height: 36),

              // PIN INPUT BOX
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Pinput(
                    defaultPinTheme: PinTheme(
                        width: 49,
                        height: 60,
                        decoration: BoxDecoration(
                            color: Color(0xFF364C61),
                            borderRadius: BorderRadius.circular(8.0))),
                    length: 6,
                  ), // Add your PinInputField here // Add your PinInputField here
                ],
              ),
              SizedBox(height: 40), // Adjust spacing if needed

              // VERIFY BUTTON
              GestureDetector(
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
              ),
              SizedBox(height: 16),

              // RESEND CODE
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Didn\'t receive code?',
                    style: TextStyle(
                      color: Color(0xFFA9ABAD),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      // Add navigation logic here
                      // Navigator.pushNamed(context, '/');
                    },
                    child: Text(
                      ' Resend',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color(0xFFFF4B4B),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 16),
            ],
          ),
        ),
      ),
    );
  }
}
