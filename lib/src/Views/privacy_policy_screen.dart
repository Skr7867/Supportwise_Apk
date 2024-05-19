// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

import '../ColorScreen/colors.dart';
import '../ColorScreen/fontfamily.dart';

class PrivacyScreen extends StatefulWidget {
  const PrivacyScreen({super.key});

  @override
  State<PrivacyScreen> createState() => _PrivacyPolicyState();
}

class _PrivacyPolicyState extends State<PrivacyScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Privacy Policy',
          style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500,
              fontFamily: AppFonts.ApercuPro,
              color: Color(0xff2A2A2A)),
        ),
      ),
      body: Container(
        margin: EdgeInsets.only(top: 20, left: 10, right: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'At SupportWise, we are commited to protecting your privacy and ensuring the security of your personal information. Our Privacy Policy outlines how we collect, use, and protect the data you provide to us. By using SupportWise, you agree to our Privacy Policy.',
              textAlign: TextAlign.justify,
              style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  fontFamily: AppFonts.Apercu,
                  color: HelpColor),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Our Privacy Policy covers the following areas:',
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  fontFamily: AppFonts.Apercu,
                  color: HelpColor),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Information Collection:',
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  fontFamily: AppFonts.Apercu,
                  color: HelpColor),
            ),
            Text(
              'We collect personal information such as your name, email address, and preferences when you sign up for SupportWise',
              textAlign: TextAlign.justify,
              style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  fontFamily: AppFonts.Apercu,
                  color: HelpColor),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Data Usage',
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  fontFamily: AppFonts.Apercu,
                  color: HelpColor),
            ),
            Text(
              'We use the information collected to provide personalized experiences, improve our services, and communicate with you.',
              textAlign: TextAlign.justify,
              style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  fontFamily: AppFonts.Apercu,
                  color: HelpColor),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Data Security:',
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  fontFamily: AppFonts.Apercu,
                  color: HelpColor),
            ),
            Text(
              'We implement security measures to safeguard your personal information from unauthorized access or disclosure.',
              textAlign: TextAlign.justify,
              style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  fontFamily: AppFonts.Apercu,
                  color: HelpColor),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Information Sharing:',
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  fontFamily: AppFonts.Apercu,
                  color: HelpColor),
            ),
            Text(
              'We do not sell or share your personal information with third parties without your consent, except as required by law.',
              textAlign: TextAlign.justify,
              style: TextStyle(
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
