// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:pc_tech/views/auth/MFA_view.dart';
import 'package:pc_tech/views/auth/login_view.dart';
import 'package:pc_tech/views/auth/register_view.dart';
import 'package:pc_tech/views/auth/reset_view.dart';
import 'package:pc_tech/views/home_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginView(),
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      initialRoute: '/', // Set the initial route
      routes: {
        '/homepage': (context) => HomeView(),
        '/login': (context) => LoginView(), // Map '/' to HomePage widget
        '/register': (context) => RegisterView(), // Map '/' to Register widget
        '/mfa': (context) => MFAView(), // Map to MFA widget
        '/forgotpass': (context) => ForgetPasswordView() // Map to MFA widget
        // Add more routes as needed
      },
    );
  }
}
