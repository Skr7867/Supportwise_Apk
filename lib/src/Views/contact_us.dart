// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:supportwise/src/Views/thank_you_screen2.dart';

import '../ColorScreen/colors.dart';
import '../ColorScreen/fontfamily.dart';
import '../common/custome_button.dart';
import '../files/controller/controller.dart';

class ContactUsScreen extends StatefulWidget {
  const ContactUsScreen({super.key});

  @override
  State<ContactUsScreen> createState() => _ContactUsScreenState();
}

class _ContactUsScreenState extends State<ContactUsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Contact Us',
          style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
              fontFamily: AppFonts.ApercuPro),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(left: 10, right: 10, top: 10),
          child: Column(
            children: [
              Center(
                child: Text(
                  'Contact SupportWise',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    fontFamily: AppFonts.popins,
                    color: Color(0xff414141),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text('Address'),
              Text(
                'At SupportWise, we prioritize providing exceptional support to our valued customers.',
                style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff898989),
                    fontFamily: AppFonts.Apercu),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Call : (+91) 0123456789',
                style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff898989),
                    fontFamily: AppFonts.Apercu),
              ),
              Text(
                'Email : support@gmail.com',
                style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff898989),
                    fontFamily: AppFonts.Apercu),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                'Send Message',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    fontFamily: AppFonts.Apercu),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 50,
                width: 362,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(width: 1, color: BorderColor),
                ),
                child: TextField(
                  controller: namecontroller,
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.only(left: 15),
                      border: InputBorder.none,
                      hintText: 'Name',
                      hintStyle: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          fontFamily: AppFonts.Apercu,
                          color: Color(0xffD0D0D0))),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 50,
                width: 362,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(width: 1, color: BorderColor),
                ),
                child: TextField(
                  controller: emailcontroller,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.only(left: 15),
                      border: InputBorder.none,
                      hintText: 'Email',
                      hintStyle: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          fontFamily: AppFonts.Apercu,
                          color: Color(0xffD0D0D0))),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 50,
                width: 362,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(width: 1, color: BorderColor),
                ),
                child: TextField(
                  maxLength: 10,
                  controller: mobilecontroller,
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                      counterText: '',
                      contentPadding: EdgeInsets.only(left: 15),
                      border: InputBorder.none,
                      prefixText: '+91  ',
                      enabled: true,
                      prefixStyle: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          fontFamily: AppFonts.Apercu),
                      hintText: 'Your Mobile Number',
                      hintStyle: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          fontFamily: AppFonts.Apercu,
                          color: Color(0xffD0D0D0))),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 118,
                width: 362,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(width: 1, color: BorderColor),
                ),
                child: TextField(
                  maxLines: 30,
                  controller: textcontroller,
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.only(left: 15, top: 10),
                      border: InputBorder.none,
                      hintText: 'Write Your Text',
                      hintStyle: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          fontFamily: AppFonts.popins,
                          color: Color(0xffD0D0D0))),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              CustomButton(
                  width: 362,
                  height: 41,
                  text: "Send Message",
                  onPressed: () {
                    Get.to(ThankYouScreen2());
                  })
            ],
          ),
        ),
      ),
    );
  }
}
