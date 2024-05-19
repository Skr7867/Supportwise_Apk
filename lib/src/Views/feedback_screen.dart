// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';

import 'package:supportwise/src/Views/thank_you_screen2.dart';

import '../ColorScreen/fontfamily.dart';
import '../common/custome_button.dart';

class FeedbackScreen extends StatelessWidget {
  const FeedbackScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Feedback',
          style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500,
              fontFamily: AppFonts.ApercuPro,
              color: Color(0xff2A2A2A)),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(left: 10, right: 10, top: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Share your feedbackwith us to help improve SupportWise:',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    fontFamily: AppFonts.Apercu,
                    color: Color(0xff717171)),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                'Please enter your feedback here:',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    fontFamily: AppFonts.Apercu,
                    color: Color(0xff717171)),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 100,
                decoration: BoxDecoration(
                  color: Color(0xffEFEFF0),
                  borderRadius: BorderRadius.circular(8),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 0,
                      blurRadius: 4,
                      offset: Offset(2, 3), // changes position of shadow
                    ),
                  ],
                ),
                child: TextField(
                  maxLines: 30,
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.only(left: 10),
                      hintText: 'Type your feedback here',
                      hintStyle: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          fontFamily: AppFonts.Apercu,
                          color: Color(0xff212121)),
                      border: InputBorder.none),
                ),
              ),
              SizedBox(
                height: 330,
              ),
              Padding(
                  padding: const EdgeInsets.only(left: 22),
                  child: CustomButton(
                      width: 294,
                      height: 36,
                      text: 'Submit',
                      onPressed: () {
                        Get.to(ThankYouScreen2());
                      }))
            ],
          ),
        ),
      ),
    );
  }
}
