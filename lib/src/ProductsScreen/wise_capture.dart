// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:supportwise/src/ColorScreen/fontfamily.dart';

import '../Views/demo_screen.dart';

class WiseCapture extends StatefulWidget {
  const WiseCapture({super.key});

  @override
  State<WiseCapture> createState() => _WiseCaptureState();
}

class _WiseCaptureState extends State<WiseCapture> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Wise capture',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w500,
            fontFamily: AppFonts.Apercu,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset('assets/images/product2.png'),
            Container(
              margin: EdgeInsets.only(right: 50, top: 30),
              child: Text(
                'Enterprise Recording Software',
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
                'Unleash the full potential of enterprise voice data',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    fontFamily: AppFonts.Apercu),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 10, right: 10, top: 5),
              child: Text(
                'Wise Capture is an enterprise recording solution designed to capture top-tier voice and screen data from all conversations across various platforms. Its fully accessible APIs empower users to leverage AI-compatible data, including structured and unstructured information from customer interactions, along with metadata, screen tagging, and comprehensive transcriptions, seamlessly integrating with enterprise applications while ensuring total compliance and data governance.',
                textAlign: TextAlign.justify,
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    fontFamily: AppFonts.Apercu,
                    color: Colors.grey),
              ),
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 10, top: 20),
                  height: 25,
                  width: 25,
                  child: Image.asset('assets/icons/check.png'),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10, top: 20),
                  child: Text(
                    'Access all structured and unstructured\nvoice and screen data',
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
                  margin: EdgeInsets.only(left: 10, top: 20),
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
                    'Integrate AI-ready data across enterprise\napplications',
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
                  margin: EdgeInsets.only(left: 10, top: 20),
                  height: 25,
                  width: 25,
                  child: Image.asset('assets/icons/check.png'),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10, top: 20),
                  child: Text(
                    'Ensure regulatory compliance and\ndata security',
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
                  margin: EdgeInsets.only(left: 10, top: 20),
                  height: 25,
                  width: 25,
                  child: Image.asset('assets/icons/check.png'),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10, top: 20),
                  child: Text(
                    'Easy to search, annotate, replay, lock,\nand export recordings.',
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
