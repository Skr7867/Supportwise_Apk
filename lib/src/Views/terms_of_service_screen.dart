// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import '../ColorScreen/colors.dart';
import '../ColorScreen/fontfamily.dart';

class TermsOfService extends StatelessWidget {
  const TermsOfService({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Terms of Service',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w500,
            fontFamily: AppFonts.ApercuPro,
            color: Color(0xff2A2A2A),
          ),
        ),
      ),
      body: Container(
        margin: EdgeInsets.only(left: 10, right: 10, top: 10),
        child: Column(
          children: [
            Text(
              'Welcome to SupportWise! These Terms of Service ("Terms") govern your use of the SupportWise application and services provided by us. By accessing or using SupportWise, you agree to abide by these Terms and our Privacy Policy.',
              textAlign: TextAlign.justify,
              style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                  fontFamily: AppFonts.Apercu,
                  color: Color(0xff717171)),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              'Welcome to SupportWise! These Terms of Service govern your access to and use of our website, products, and services. By accessing or using any part of our services, you agree to be bound by these Terms. Please read them carefully before using our services. If you do not agree with any part of these Terms, you may not access or use our services. Our services are intended for users who are at least 18 years old. You are responsible for maintaining the confidentiality of your account and password and for restricting access to your account. You agree to accept responsibility for all activities that occur under your account. We reserve the right to modify or terminate our services or these Terms at any time, without prior notice. It is your responsibility to review these Terms periodically for changes. Your continued use of our services after any modifications indicates your acceptance of the updated Terms.',
              textAlign: TextAlign.justify,
              style: TextStyle(
                  height: 1.6,
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  fontFamily: AppFonts.Apercu,
                  color: HelpColor),
            )
          ],
        ),
      ),
    );
  }
}
