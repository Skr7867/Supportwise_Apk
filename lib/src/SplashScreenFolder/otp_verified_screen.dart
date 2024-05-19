// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:supportwise/src/ColorScreen/fontfamily.dart';

import '../common/app_navigator.dart';

class OtpVerifiedScreen extends StatelessWidget {
  const OtpVerifiedScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => NavigationMenu(),
        ),
      );
    });

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: Color(0xffFDEDD7),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 60),
              child: Text(
                'OTP Verified',
                style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.w500,
                    fontFamily: AppFonts.Apercu),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 100),
              height: 155,
              width: 157,
              child: Image.asset('assets/images/verified.png'),
            ),
          ],
        ),
      )),
    );
  }
}
