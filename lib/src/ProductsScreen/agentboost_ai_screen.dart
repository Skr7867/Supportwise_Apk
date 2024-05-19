// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:supportwise/src/ColorScreen/fontfamily.dart';

import '../Views/demo_screen.dart';

class AgentBoostScreen extends StatelessWidget {
  const AgentBoostScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Agent Boost',
          style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w500,
              fontFamily: AppFonts.popins),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset('assets/images/subscription1.png'),
            Container(
              margin: EdgeInsets.only(left: 10, right: 10),
              child: Text(
                'Software for Agent Assistance and Real-Time AI Coaching',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    fontFamily: AppFonts.Apercu),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 10, right: 10),
              child: Text(
                'Enhance agent effectiveness and efficiency through real-time guidance and workflow streamlining.',
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    fontFamily: AppFonts.Apercu,
                    color: Colors.grey),
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
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 10, right: 10, top: 20),
              child: Text(
                'Create better experiences for your agents and customers',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    fontFamily: AppFonts.Apercu,
                    color: Color(0xff181818)),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 10, right: 10),
              child: Text(
                'Agent Boost supports agents in quickly acclimating to their tasks by providing real-time guidance tools for managing customer conversations, resolving issues promptly, and automating laborious post-call tasks.',
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    fontFamily: AppFonts.Apercu,
                    color: Colors.grey),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              width: 393,
              height: 160,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 229, 218, 221),
              ),
              child: Row(
                children: [
                  Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 20),
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              Color(0xffF8A435),
                              Color(0xff92611F),
                            ],
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset(
                            'assets/icons/AgentRight.png',
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      Text(
                        'Reduce onboarding\n time',
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w700,
                            fontFamily: AppFonts.Apercu),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 80),
                    width: 40,
                    height: 4,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          Color(0xffF8A435),
                          Color(0xff92611F),
                        ],
                      ),
                    ),
                  ),
                  Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 20),
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              Color(0xffF8A435),
                              Color(0xff92611F),
                            ],
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset(
                            'assets/icons/AgentRight.png',
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      Text(
                        'Minimize costly\n errors',
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w700,
                            fontFamily: AppFonts.Apercu),
                        textAlign: TextAlign.center,
                      )
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 80),
                    width: 40,
                    height: 4,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          Color(0xffF8A435),
                          Color(0xff92611F),
                        ],
                      ),
                    ),
                  ),
                  Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 20),
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              Color(0xffF8A435),
                              Color(0xff92611F),
                            ],
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset(
                            'assets/icons/AgentRight.png',
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      Text(
                        'Improve agent\n productivity',
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w700,
                            fontFamily: AppFonts.Apercu),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              'Trusted by industry leaders',
              style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w500,
                  fontFamily: AppFonts.Apercu,
                  color: Color(0xff75787B)),
            ),
            Container(
              height: 240,
              width: 340,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 229, 218, 221),
                borderRadius: BorderRadius.circular(15),
                image: DecorationImage(
                  image: AssetImage(
                    'assets/images/leader.png',
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
