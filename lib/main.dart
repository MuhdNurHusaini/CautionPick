// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:pc_tech/modules/auth/MultiFactorAuth/MFA.dart';
import 'package:pc_tech/modules/home/homepage.dart';
import 'package:pc_tech/modules/auth/login/login.dart';
import 'package:pc_tech/modules/auth/register/register.dart';
import 'package:pc_tech/modules/auth/reset_pass/forgotpass.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Login(),
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      initialRoute: '/', // Set the initial route
      routes: {
        '/homepage': (context) => HomePage(),
        '/login': (context) => Login(), // Map '/' to HomePage widget
        '/register': (context) => Register(), // Map '/' to Register widget
        '/mfa': (context) => MFA(), // Map to MFA widget
        '/forgotpass': (context) => ForgetPassword() // Map to MFA widget
        // Add more routes as needed
      },
    );
  }
}
