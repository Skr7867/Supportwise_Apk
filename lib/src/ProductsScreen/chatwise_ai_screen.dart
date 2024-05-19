// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:supportwise/src/ColorScreen/fontfamily.dart';

import '../Views/demo_screen.dart';

class ChatWiseAi extends StatefulWidget {
  const ChatWiseAi({super.key});

  @override
  State<ChatWiseAi> createState() => _ChatWiseAiState();
}

class _ChatWiseAiState extends State<ChatWiseAi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'ChatWise AI',
          style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w500,
              fontFamily: AppFonts.popins),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset('assets/images/subscription2.png'),
            Padding(
              padding: const EdgeInsets.only(right: 20, left: 20, top: 10),
              child: Text(
                'Conversational Automation Powered by AI',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    fontFamily: AppFonts.Apercu),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 20, left: 20, top: 10),
              child: Text(
                'Enhance the self-service process by incorporating intelligent virtual agents capable of understanding, empathizing, and efficiently resolving issues on a large scale.',
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    fontFamily: AppFonts.Apercu,
                    color: Colors.grey),
                textAlign: TextAlign.justify,
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 30),
              width: 120,
              height: 36,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Color(0xff474646),
                    Color(0xffFF9200),
                  ],
                ),
              ),
              child: Center(
                child: TextButton(
                    onPressed: () {
                      Get.to(MyForm());
                    },
                    child: Text(
                      'Add to Cart',
                      style: TextStyle(
                          fontSize: 14,
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                          fontFamily: AppFonts.Apercu),
                    )),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 40, top: 30),
              child: Text(
                'Discover what enterprise AI can do for customer service',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    fontFamily: AppFonts.Apercu,
                    color: Color(0xff181818)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Text(
                'SupportWise tackles the primary obstacles encountered by modern contact centers, such as increased call loads and agent fatigue, while also improving operational scalability. Leveraging advanced enterprise AI technology, ChatWise AI automates interactions across both voice and digital platforms, providing highly personalized self-service options that customers will find appealing.',
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    fontFamily: AppFonts.Apercu,
                    color: Colors.grey),
                textAlign: TextAlign.justify,
              ),
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 20, top: 20),
                  height: 25,
                  width: 25,
                  child: Image.asset('assets/icons/check.png'),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10, top: 20),
                  child: Text(
                    'Automate conversations with empathy',
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        fontFamily: AppFonts.Apercu),
                  ),
                )
              ],
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 20, top: 20),
                  height: 25,
                  width: 25,
                  child: Image.asset('assets/icons/check.png'),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 10,
                    top: 20,
                  ),
                  child: Text(
                    'Redirect redundant calls away from agents.',
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        fontFamily: AppFonts.Apercu),
                  ),
                )
              ],
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 20, top: 20),
                  height: 25,
                  width: 25,
                  child: Image.asset('assets/icons/check.png'),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10, top: 20),
                  child: Text(
                    'Minimize customer waiting periods.',
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        fontFamily: AppFonts.Apercu),
                  ),
                )
              ],
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 20, top: 20),
                  height: 25,
                  width: 25,
                  child: Image.asset('assets/icons/check.png'),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10, top: 20),
                  child: Text(
                    'Boost engagement and improve CSAT',
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        fontFamily: AppFonts.Apercu),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
