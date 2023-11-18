// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:pc_tech/pages/homepage.dart';
import 'package:pc_tech/pages/login.dart';
import 'package:pc_tech/pages/register.dart';

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
         '/login':(context) => Login(), // Map '/' to HomePage widget
         '/register': (context) => Register(), // Map '/' to Register widget
        // Add more routes as needed
      },
    );
  }
}