// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:supportwise/src/Views/feedback_screen.dart';

class ThankYouScreen2 extends StatelessWidget {
  const ThankYouScreen2({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => FeedbackScreen(),
        ),
      );
    });

    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          SizedBox(
            height: 40,
          ),
          Center(
            child: SvgPicture.asset('assets/images/thankyou.svg'),
          ),
          SizedBox(
            height: 60,
          ),
          Text(
            'Thank You!',
            style: TextStyle(
                fontFamily: 'AppFonts.Apercu',
                fontWeight: FontWeight.w500,
                fontSize: 28),
          ),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Text(
              'We appreciate you contacting SupportWise. Thank you for choosing us. Have a great day!',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: 'AppFonts.Apercu',
                fontSize: 14,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
