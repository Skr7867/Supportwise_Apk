// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ThankYouScreen extends StatefulWidget {
  const ThankYouScreen({super.key});

  @override
  State<ThankYouScreen> createState() => _ThankYouScreenState();
}

class _ThankYouScreenState extends State<ThankYouScreen> {
  @override
  Widget build(BuildContext context) {
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
              'We appreciate you contacting SupportWise. One of our colleagues will get back in touch with you soon! Have a great day!',
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
