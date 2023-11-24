// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:pc_tech/widget/email_form.dart';
import 'package:pc_tech/widget/pass_form.dart';
import 'package:pc_tech/widget/signup_button.dart';

class Register extends StatelessWidget {
  const Register({Key? key});

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
              // ICONS

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

              // EMAIL TEXTFIELD
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40.0),
                child: EmailForm(),
              ),
              SizedBox(height: 8),

              // PHONE NUMBER TEXTFIELD
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40.0),
                child: Container(
                  decoration: BoxDecoration(
                      color: Color(0xFF364C61),
                      border: Border.all(color: Color(0xFF364C61)),
                      borderRadius: BorderRadius.circular(10.0)),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 1.0),
                    child: TextField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons
                              .smartphone_outlined, // Replace with your desired icon
                          color: Colors.white,
                        ),
                        hintStyle: TextStyle(color: Color(0xFFA9ABAD)),
                        hintText: 'Phone number',
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 8),

              // PASSWORD TEXTFIELD
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40.0),
                child: PassForm(),
              ),
              SizedBox(height: 8),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40.0),
                child: ConfirmPassForm(),
              ),
              SizedBox(height: 8),

              // SIGN IN BUTTON
              SignUpButton(),
            ],
          ),
        ),
      ),
    );
  }
}
