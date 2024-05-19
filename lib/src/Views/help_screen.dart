// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:supportwise/src/Views/contact_us.dart';
import 'package:supportwise/src/Views/feedback_screen.dart';
import 'package:supportwise/src/Views/help_and_support_screen.dart';
import 'package:supportwise/src/Views/privacy_policy_screen.dart';
import 'package:supportwise/src/Views/terms_of_service_screen.dart';

import '../common/const.dart';
import 'about_us_screen.dart';

class HelpScreen extends StatefulWidget {
  const HelpScreen({super.key});

  @override
  State<HelpScreen> createState() => _HelpScreenState();
}

class _HelpScreenState extends State<HelpScreen> {
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
              fontFamily: 'AppFonts.Apercu Pro'),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 12, right: 10, top: 30),
            child: Text(
              'Get assistance and find answers to n your questions:',
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  fontFamily: 'AppFonts.Apercu'),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: helplist.length,
              itemBuilder: ((context, index) {
                return ListTile(
                  title: Text(
                    helplist[index],
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'AppFonts.Apercu'),
                  ),
                  trailing: IconButton(
                    onPressed: () {
                      if (buttonlist[index] == "assets/icons/right.svg") {
                        Get.to(ContactUsScreen());
                      } else if (buttonlist[index] ==
                          "assets/icons/right1.svg") {
                        Get.to(HelpAndSupportScreen());
                      } else if (buttonlist[index] ==
                          "assets/icons/right2.svg") {
                        Get.to(PrivacyScreen());
                      } else if (buttonlist[index] ==
                          "assets/icons/right3.svg") {
                        Get.to(TermsOfService());
                      } else if (buttonlist[index] ==
                          "assets/icons/right4.svg") {
                        Get.to(FeedbackScreen());
                      } else if (buttonlist[index] ==
                          "assets/icons/right5.svg") {
                        Get.to(AboutUsScreen());
                      }
                    },
                    icon: SvgPicture.asset(buttonlist[index]),
                  ),
                );
              }),
            ),
          )
        ],
      ),
    );
  }
}
