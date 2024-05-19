// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

import '../ColorScreen/colors.dart';
import '../ColorScreen/fontfamily.dart';

class HelpAndSupportScreen extends StatefulWidget {
  const HelpAndSupportScreen({super.key});

  @override
  State<HelpAndSupportScreen> createState() => _HelpAndSupportScreenState();
}

class _HelpAndSupportScreenState extends State<HelpAndSupportScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Help and Support',
          style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500,
              fontFamily: AppFonts.ApercuPro),
        ),
      ),
      body: Container(
        margin: EdgeInsets.only(top: 20, right: 15, left: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Help and Support',
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  fontFamily: AppFonts.ApercuPro),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'At SupportWise, we prioritize providing exceptional support to our valued customers. Our dedicated support team is available around the clock to assist you with any inquiries, technical issues, or concerns you may have. Whether you are seeking guidance on using our products or need troubleshooting assistance, we are here to ensure your experience with us is seamless and satisfactory. Please do not hesitate to reach out to us via phone, email, or live chat for prompt and personalized assistance. Your satisfaction is our top priority, and we are committed to going above and beyond to meet your needs',
              style: TextStyle(
                  height: 1.7,
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  fontFamily: AppFonts.Apercu,
                  letterSpacing: 0.5,
                  color: HelpColor),
              textAlign: TextAlign.justify,
            )
          ],
        ),
      ),
    );
  }
}
