// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get/utils.dart';
import 'package:supportwise/src/ColorScreen/fontfamily.dart';

import '../ProductsScreen/agentboost_ai_screen.dart';
import '../ProductsScreen/chatwise_ai_screen.dart';
import '../ProductsScreen/product_screen.dart';
import '../ProductsScreen/wise_capture.dart';
import '../ProductsScreen/wise_talk.dart';
import '../Views/about_us_screen.dart';
import '../Views/contact_us.dart';
import '../Views/setting_screen.dart';

class CustomDrawer extends StatefulWidget {
  const CustomDrawer({super.key});

  @override
  State<CustomDrawer> createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer> {
  bool isexpanded = false;
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Color(0xffF8A435),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(),
      ),
      child: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height / 30,
          ),
          const ListTile(
            titleAlignment: ListTileTitleAlignment.center,
            title: Text(
              'Bharti Goyal',
              style: TextStyle(
                fontFamily: AppFonts.Apercu,
              ),
            ),
            subtitle: Text(
              'bhartigoyal@gmail.com',
              style: TextStyle(
                fontFamily: AppFonts.Apercu,
              ),
            ),
            leading: CircleAvatar(
              backgroundImage: AssetImage('assets/images/profile.png'),
            ),
          ),
          SizedBox(
            child: Wrap(
              children: [
                ListTile(
                  title: Text(
                    'Search',
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        fontFamily: AppFonts.Apercu,
                        color: Colors.white),
                  ),
                  leading: Image.asset(
                    "assets/icons/Drawericons/search.png",
                    height: 25,
                    width: 25,
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 2.0),
                      child: ListTile(
                        onTap: () {
                          Get.to(ProductScreen());
                        },
                        title: Text(
                          'Products',
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                              fontFamily: AppFonts.Apercu,
                              color: Colors.white),
                        ),
                        leading: Image.asset(
                          "assets/icons/Drawericons/products.png",
                          height: 25,
                          width: 25,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 80,
                      ),
                      child: Column(
                        children: [
                          ListTile(
                            onTap: () {
                              Get.to(ChatWiseAi());
                            },
                            dense: true,
                            title: Text(
                              'Chat Wise AI',
                              style: TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: AppFonts.Apercu,
                                  color: Colors.white),
                            ),
                          ),
                          ListTile(
                            onTap: () {
                              Get.to(AgentBoostScreen());
                            },
                            title: Text(
                              'Agent Boost',
                              style: TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: AppFonts.Apercu,
                                  color: Colors.white),
                            ),
                          ),
                          ListTile(
                            onTap: () {
                              Get.to(WiseCapture());
                            },
                            title: Text(
                              'Wise Capture',
                              style: TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: AppFonts.Apercu,
                                  color: Colors.white),
                            ),
                          ),
                          ListTile(
                            onTap: () {
                              Get.to(WiseTalk());
                            },
                            title: Text(
                              'Wise Talk',
                              style: TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: AppFonts.Apercu,
                                  color: Colors.white),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                ListTile(
                  onTap: () {
                    Get.to(SettingScreen());
                  },
                  title: Text(
                    'Profile',
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        fontFamily: AppFonts.Apercu,
                        color: Colors.white),
                  ),
                  leading: Image.asset(
                    "assets/icons/Drawericons/profile.png",
                    height: 25,
                    width: 25,
                  ),
                ),
                ListTile(
                  onTap: () {
                    Get.to(SettingScreen());
                  },
                  title: Text(
                    'Settings',
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        fontFamily: AppFonts.Apercu,
                        color: Colors.white),
                  ),
                  leading: Image.asset(
                    "assets/icons/Drawericons/settings.png",
                    height: 25,
                    width: 25,
                  ),
                ),
                ListTile(
                  onTap: () {
                    Get.to(AboutUsScreen());
                  },
                  title: Text(
                    'About Us',
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        fontFamily: AppFonts.Apercu,
                        color: Colors.white),
                  ),
                  leading: Image.asset(
                    "assets/icons/Drawericons/AboutUs.png",
                    height: 25,
                    width: 25,
                  ),
                ),
                ListTile(
                  onTap: () {
                    Get.to(ContactUsScreen());
                  },
                  title: Text(
                    'Contact Us',
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        fontFamily: AppFonts.Apercu,
                        color: Colors.white),
                  ),
                  leading: Image.asset(
                    "assets/icons/Drawericons/contact.png",
                    height: 25,
                    width: 25,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 17, top: 30),
            child: Row(
              children: [
                SvgPicture.asset(
                  'assets/icons/logout.svg',
                  color: Colors.white,
                ),
                TextButton(
                    onPressed: () {
                      Get.to(SettingScreen());
                    },
                    child: Text(
                      'Log out',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          fontFamily: AppFonts.Apercu,
                          color: Colors.white),
                    ))
              ],
            ),
          )
        ],
      ),
    );
  }
}
