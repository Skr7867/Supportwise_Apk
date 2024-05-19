// ignore_for_file: prefer_const_constructors, prefer_final_fields, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:supportwise/src/Views/thank_you_screen2.dart';
import 'package:supportwise/src/Views/thankyou_screen.dart';

import '../ColorScreen/colors.dart';
import '../ColorScreen/fontfamily.dart';
import '../files/controller/controller.dart';

class MyForm extends StatefulWidget {
  @override
  _MyFormState createState() => _MyFormState();
}

class _MyFormState extends State<MyForm> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Get a Demo',
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 26,
                      fontFamily: AppFonts.Apercu),
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Row(
                children: [
                  SizedBox(
                    height: 46,
                    width: 150,
                    child: TextFormField(
                      maxLines: 1,
                      controller: nameController,
                      decoration: InputDecoration(
                          // contentPadding: EdgeInsets.all(20),
                          suffix: SvgPicture.asset(
                            'assets/icons/person.svg',
                            height: 25,
                            width: 15,
                          ),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: BorderSide(color: Color(0xffF8A435))),
                          hintText: 'Name',
                          hintStyle: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              color: EmailTextColor)),
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  SizedBox(
                    height: 46,
                    width: 155,
                    child: TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      maxLines: 1,
                      controller: emailController,
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.all(20),
                          suffix: SvgPicture.asset(
                            'assets/icons/msg.svg',
                            height: 14,
                            width: 17.03,
                          ),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: BorderSide(color: Color(0xffF8A435))),
                          hintText: 'E-Mail',
                          hintStyle: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              color: EmailTextColor)),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),

            // Second Row starting from here
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Row(
                children: [
                  SizedBox(
                    height: 69,
                    width: 150,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Phone Number',
                          style: TextStyle(
                              color: EmailTextColor,
                              fontFamily: AppFonts.ApercuPro),
                        ),
                        TextFormField(
                          maxLength: 10,
                          cursorHeight: 20,
                          keyboardType: TextInputType.phone,
                          controller: phoneController,
                          decoration: InputDecoration(
                              counterText: '',
                              contentPadding: EdgeInsets.only(left: 17),
                              suffix: Padding(
                                padding: const EdgeInsets.only(
                                  right: 18,
                                ),
                                child: SvgPicture.asset(
                                  'assets/icons/phone.svg',
                                  height: 18,
                                  width: 12,
                                ),
                              ),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20),
                                  borderSide:
                                      BorderSide(color: Color(0xffF8A435))),
                              hintText: '(123) 456-7890',
                              hintStyle: TextStyle(
                                  fontSize: 12, fontWeight: FontWeight.w500)),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  SizedBox(
                    height: 69,
                    width: 155,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Company',
                          style: TextStyle(
                              color: EmailTextColor,
                              fontFamily: AppFonts.ApercuPro),
                        ),
                        TextFormField(
                          cursorHeight: 20,
                          maxLines: 1,
                          controller: companyController,
                          decoration: InputDecoration(
                              contentPadding: EdgeInsets.only(left: 16),
                              suffix: Padding(
                                padding: const EdgeInsets.only(right: 15),
                                child: SvgPicture.asset(
                                  'assets/icons/compny.svg',
                                  height: 17,
                                  width: 5,
                                ),
                              ),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20),
                                  borderSide:
                                      BorderSide(color: Color(0xffF8A435))),
                              hintText: 'Company name',
                              hintStyle: TextStyle(
                                  fontSize: 12, fontWeight: FontWeight.w500)),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            // third Row starting from here
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Row(
                children: [
                  SizedBox(
                    height: 69,
                    width: 150,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Job Title",
                          style: TextStyle(
                              color: EmailTextColor,
                              fontFamily: AppFonts.ApercuPro),
                        ),
                        TextFormField(
                          cursorHeight: 20,
                          controller: jobController,
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.only(left: 17),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            hintText: 'Enter Your Product',
                            hintStyle: TextStyle(
                                fontSize: 12, fontWeight: FontWeight.w500),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  SizedBox(
                    height: 69,
                    width: 155,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Product',
                          style: TextStyle(
                              color: EmailTextColor,
                              fontFamily: AppFonts.ApercuPro),
                        ),
                        TextFormField(
                          cursorHeight: 20,
                          controller: productController,
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.only(left: 17),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                                borderSide:
                                    BorderSide(color: Color(0xffF8A435))),
                            hintText: 'Enter Your Product',
                            hintStyle: TextStyle(
                                fontSize: 12, fontWeight: FontWeight.w500),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: DemoButtonColor,
                  ),
                  onPressed: () {
                    Get.to(ThankYouScreen());
                  },
                  child: Text(
                    'Request a Demo',
                    style: TextStyle(
                        color: Color(0xffFFFFFF),
                        fontFamily: AppFonts.Apercu,
                        fontWeight: FontWeight.w600,
                        fontSize: 15),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),

            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text(
                'Your service rating',
                style: TextStyle(
                    color: EmailTextColor,
                    fontSize: 18,
                    fontWeight: FontWeight.w700),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Row(
                children: [
                  SvgPicture.asset(
                    'assets/icons/star.svg',
                    color: StarColor,
                    height: 22,
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  SvgPicture.asset(
                    'assets/icons/star.svg',
                    color: StarColor,
                    height: 22,
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  SvgPicture.asset(
                    'assets/icons/star.svg',
                    color: StarColor,
                    height: 22,
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  SvgPicture.asset(
                    'assets/icons/surface1.svg',
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  SvgPicture.asset(
                    'assets/icons/surface1.svg',
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),

            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text(
                'Additional feedback',
                style: TextStyle(
                    color: EmailTextColor,
                    fontSize: 18,
                    fontWeight: FontWeight.w700),
              ),
            ),

            Container(
              margin: EdgeInsets.all(20),
              child: TextField(
                controller: feedbackController,
                maxLines: null, // Allows the TextField to grow dynamically
                decoration: InputDecoration(
                  hintText:
                      'If you have any additional feedback,\n please type it in here...',
                  hintStyle: TextStyle(fontFamily: AppFonts.ApercuPro),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(width: 1, color: Colors.grey),
                  ),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Row(
                children: [
                  Icon(Icons.check_box_outline_blank),
                  Text(
                    'I have read and accept the Privacy Policy',
                    style: TextStyle(
                        fontFamily: AppFonts.ApercuPro, color: PrivacyPolicy),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),

            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: DemoButtonColor,
                ),
                onPressed: () {
                  Get.to(ThankYouScreen2());
                },
                child: Text(
                  'Submit feedback',
                  style: TextStyle(
                      color: Color(0xffFFFFFF),
                      fontFamily: AppFonts.Apercu,
                      fontWeight: FontWeight.w600,
                      fontSize: 15),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),

            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    SvgPicture.asset('assets/images/A1.svg'),
                    Image.asset(
                      'assets/images/Rectangle 9.png',
                      height: 180,
                      width: 125,
                    ),
                    SvgPicture.asset('assets/images/A3.svg'),
                    Image.asset(
                      'assets/images/A4.png',
                      height: 180,
                      width: 125,
                    ),
                    SvgPicture.asset('assets/images/A5.svg'),
                    Image.asset(
                      'assets/images/A6.png',
                      height: 180,
                      width: 125,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Column(
              children: [
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 30),
                      height: 180,
                      width: 159,
                      decoration: BoxDecoration(
                        color: Color(0xffFEFEFE),
                        boxShadow: [
                          BoxShadow(
                            color:
                                Colors.black.withOpacity(0.2), // shadow color
                            spreadRadius:
                                10, // how much the shadow should spread
                            blurRadius: 15, // how blurry the shadow should be
                            offset: Offset(6, 8), // changes the shadow position
                          ),
                        ],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(right: 80, bottom: 60),
                        child: SvgPicture.asset(
                          'assets/images/Frame 11.svg',
                          height: 10,
                          width: 10,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 25,
                    ),
                    Container(
                      height: 150,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color:
                                Colors.black.withOpacity(0.2), // shadow color
                            spreadRadius:
                                2, // how much the shadow should spread
                            blurRadius: 50, // how blurry the shadow should be
                            offset:
                                Offset(10, 12), // changes the shadow position
                          ),
                        ],
                      ),
                      child: SvgPicture.asset(
                        'assets/images/Frame 72.svg',
                        height: 130,
                      ),
                    )
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 50,
            )
          ],
        ),
      ),
    );
  }
}
