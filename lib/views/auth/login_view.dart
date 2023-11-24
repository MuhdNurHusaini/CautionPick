// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:pc_tech/views/widgets/brand.dart';
import 'package:pc_tech/views/widgets/buttons/apple_button.dart';
import 'package:pc_tech/views/widgets/buttons/fb_button.dart';
import 'package:pc_tech/views/widgets/buttons/guest_button.dart';
import 'package:pc_tech/views/widgets/buttons/login_button.dart';
import 'package:pc_tech/views/widgets/buttons/reset_button.dart';
import 'package:pc_tech/views/widgets/form/email_form.dart';
import 'package:pc_tech/views/widgets/form/pass_form.dart';
// import 'package:google_fonts/google_fonts.dart';

class LoginView extends StatelessWidget {
  const LoginView({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF2C3E50),
      // CONTINUE AS GUEST BUTTON
      appBar: PreferredSize(
        preferredSize:
            Size.fromHeight(kToolbarHeight + 10), // Increase the height
        child: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.transparent,
          elevation: 0,
          actions: [
            GuestButton(),
          ],
        ),
      ),

      // BODY
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // CAUTION PICK
              Brand(),

              // CAUTION IN EVERY CART
              Text(
                'Caution in every cart',
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Gotag',
                  fontWeight: FontWeight.normal,
                  fontSize: 16,
                ),
              ),
              SizedBox(height: 40),

              // EMAIL TEXTFIELD
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40.0),
                child: EmailForm(),
              ),
              SizedBox(height: 8),

              // PASSWORD TEXTFIELD
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40.0),
                child: PassForm(),
              ),
              SizedBox(height: 12),

              // FORGOT PASSWORD
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40.0),
                child: ResetButton(),
              ),
              SizedBox(height: 12),

              // LOGIN BUTTON
              LoginButton(),
              SizedBox(height: 16),

              // NOT A MEMBER? REGISTER NOW
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Don\'t have an account?',
                    style: TextStyle(
                      color: Color(0xFFA9ABAD),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      // Add navigation logic here
                      Navigator.pushNamed(context, '/register');
                    },
                    child: Text(
                      ' Sign Up',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color(0xFFFF4B4B),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 16),

              // 'OR' TEXT WITH HORIZONTAL LINE (Using Container)
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Divider(
                        height: 1,
                        color: Colors.grey,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8),
                      child: Text(
                        'OR',
                        style: TextStyle(
                            color: Color(0xFFA9ABAD),
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Expanded(
                      child: Divider(
                        height: 1,
                        color: Color(0xFFA9ABAD),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 16),

              // ICON GOOGLE AND FACEBOOK
              AppleButton(),
              SizedBox(height: 16),

              FbButton(),
            ],
          ),
        ),
      ),
    );
  }
}
