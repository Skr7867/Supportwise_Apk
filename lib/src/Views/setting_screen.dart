// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:supportwise/src/Views/edit_profile.dart';
import 'package:supportwise/src/Views/help_screen.dart';
import 'package:supportwise/src/Views/notification_setting.dart';

import '../common/const.dart';
import 'subscription_screen.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({super.key});

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              child: Center(
                child: Stack(
                  children: [
                    Image.asset(
                      'assets/images/profile.png',
                      height: 80,
                      width: 80,
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: SvgPicture.asset('assets/icons/edit.svg'),
                      padding: EdgeInsets.only(top: 65, left: 50),
                    ),
                  ],
                ),
              ),
            ),
            Text(
              'Madara Uchiha',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  fontFamily: 'AppFonts.Apercu'),
            ),
            SizedBox(
              height: 363,
              child: ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount: title.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    onTap: () {
                      if (title[index] == "Notifications") {
                        Get.to(NotificationSetting());
                      } else if (title[index] == "Help") {
                        Get.to(HelpScreen());
                      } else if (title[index] == "Account") {
                        Get.to(EditProfileScreen());
                      } else if (title[index] == "My Subscribtion") {
                        Get.to(SubscriptionScreen());
                      }
                    },
                    leading: SvgPicture.asset(icons[index]),
                    title: Text(
                      title[index],
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'AppFonts.Apercu'),
                    ),
                    subtitle: Text(
                      subtitle[index],
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          fontFamily: 'AppFonts.Apercu'),
                    ),
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 126),
              child: Text(
                'Invite a friend',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    fontFamily: 'AppFonts.Apercu'),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              children: [
                SvgPicture.asset('assets/icons/logout.svg'),
                TextButton(
                    onPressed: () {
                      Get.defaultDialog(
                        backgroundColor: Colors.white,
                        title: 'Log Out?',
                        titleStyle: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            fontFamily: 'AppFonts.Apercu'),
                        titlePadding: EdgeInsets.only(top: 20, right: 96),
                        contentPadding: EdgeInsets.all(20),
                        middleText: 'Are you sure want to log out?',
                        middleTextStyle: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            fontFamily: 'AppFonts.Apercu Pro'),
                        confirm: TextButton(
                          onPressed: () {
                            Get.back();
                          },
                          child: Container(
                            height: 22,
                            width: 70,
                            decoration: BoxDecoration(
                                color: Color(0xffF8A435),
                                borderRadius: BorderRadius.circular(5)),
                            child: Center(
                              child: Text(
                                'Log out?',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'AppFonts.Apercu',
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                          ),
                        ),
                        cancel: TextButton(
                          onPressed: () {
                            Get.back();
                          },
                          child: Container(
                            height: 22,
                            width: 70,
                            decoration: BoxDecoration(
                                color: Color(0xff676D75),
                                borderRadius: BorderRadius.circular(5)),
                            child: Center(
                              child: Text(
                                'Cancel',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'AppFonts.Apercu',
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                    child: Text(
                      'Log Out',
                      style: TextStyle(
                          color: Color(0xffDF0000),
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'AppFonts.Apercu'),
                    ))
              ],
            )
          ],
        ),
      ),
    );
  }
}
