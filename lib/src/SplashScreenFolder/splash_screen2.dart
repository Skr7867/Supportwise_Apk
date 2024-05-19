// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import '../Views/Signin_screen.dart';

class SplashScreen2 extends StatelessWidget {
  const SplashScreen2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 3), () {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => SignInScreen(),
        ),
      );
    });

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          color: Color(0xffFDEDD7),
          child: Center(
            child: Text(
              'SupportWise',
              style: TextStyle(fontSize: 30.0, fontStyle: FontStyle.italic),
            ),
          ),
        ),
      ),
    );
  }
}
