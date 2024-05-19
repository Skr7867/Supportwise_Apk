// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:supportwise/src/ColorScreen/fontfamily.dart';

import '../Views/demo_screen.dart';

class WiseTalk extends StatelessWidget {
  const WiseTalk({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Wise Talk',
          style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w500,
              fontFamily: AppFonts.Apercu),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset('assets/images/product1.png'),
            Container(
              margin: EdgeInsets.only(top: 30, left: 10),
              child: Text(
                'Speech analytics software for call centers powered by AI.',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    fontFamily: AppFonts.Apercu),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 10, right: 10, top: 5),
              child: Text(
                'Capture high-quality, AI-ready recording data from every interaction to understand the true voice of your customers.',
                textAlign: TextAlign.justify,
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
                'Make data-driven decisions with smarter conversational analytics',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    fontFamily: AppFonts.Apercu),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 10, right: 10, top: 5),
              child: Text(
                'Wise Talk enables businesses to access actionable insights linked to performance across all interactions. It identifies trends and topics within customer calls that influence strategic planning and operational enhancements. Additionally, it audits calls to identify areas of friction and enhance both agent performance and compliance.',
                textAlign: TextAlign.justify,
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
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(
                          top: 20,
                        ),
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
                        'Analyze call,\ntext and email',
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
                    width: 50,
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
                        'Identify key\nmoments and\ncall drivers',
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
                    width: 50,
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
                        'Reduce\ncompliance\nissues',
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
          ],
        ),
      ),
    );
  }
}
