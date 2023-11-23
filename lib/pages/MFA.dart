// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class MFA extends StatelessWidget {
  const MFA({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF2C3E50),
      appBar: AppBar(
        backgroundColor: Color(0xFF2C3E50),
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // WELCOME TITLE
              RichText(
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
              ),

              Text(
                'Create an account to get all features',
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 40),

              // SIGN IN BUTTON
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
            ],
          ),
        ),
      ),
    );
  }
}
