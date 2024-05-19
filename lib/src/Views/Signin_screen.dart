// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:supportwise/src/Views/otp_verification_screen.dart';

import '../ColorScreen/colors.dart';
import '../ColorScreen/fontfamily.dart';
import '../files/controller/controller.dart';
import 'login_screen.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  State<SignInScreen> createState() => _NavigationScreenState();
}

class _NavigationScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          color: Color(0xFF474646),
          height: h,
          child: Column(
            children: [
              Container(
                height: h - 48,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(50),
                    bottomLeft: Radius.circular(50),
                  ),
                ),
                child: Stack(
                  children: [
                    Positioned(
                      top: 0,
                      child: SvgPicture.asset(
                        'assets/images/Ellipse 25.svg',
                      ),
                    ),
                    Positioned(
                      top: 0,
                      right: 2,
                      child: SvgPicture.asset(
                        'assets/images/Ellipse 24.svg',
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 50, left: 20, right: 20),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Sign In',
                                style: TextStyle(
                                    fontSize: 32,
                                    fontWeight: FontWeight.w500,
                                    fontFamily: AppFonts.Apercu),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 50,
                          ),
                          Text(
                            'Mobile Number',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              fontFamily: AppFonts.Apercu,
                              color: Color(0xff383B45),
                            ),
                          ),
                          SizedBox(
                            width: 301,
                            height: 87,
                            child: Row(
                              children: [
                                Expanded(
                                  flex: 1,
                                  child: TextFormField(
                                    readOnly: true,
                                    decoration: InputDecoration(
                                      hintText: '+91',
                                      hintStyle: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w400,
                                        fontFamily: AppFonts.Apercu,
                                        color: Color(0xff999999),
                                      ),
                                      filled: true,
                                      fillColor: Colors.white,
                                      contentPadding: EdgeInsets.only(left: 10),
                                      border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          borderSide: BorderSide.none),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Expanded(
                                  flex: 4,
                                  child: TextFormField(
                                    controller: numberController,
                                    keyboardType: TextInputType.number,
                                    maxLength: 10,
                                    decoration: InputDecoration(
                                      counterText: '',
                                      filled: true,
                                      fillColor: Colors.white,
                                      contentPadding: EdgeInsets.symmetric(
                                          vertical: 5, horizontal: 20),
                                      border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          borderSide: BorderSide.none),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 35, left: 90),
                            child: ElevatedButton(
                              onPressed: () {
                                Get.to(OtpVerifyScreen());
                              },
                              style: ButtonStyle(
                                minimumSize: MaterialStateProperty.all<Size>(
                                  Size(153, 48),
                                ),
                                backgroundColor:
                                    MaterialStateProperty.all<Color>(
                                  Color(
                                      0xff474646), // Replace with your desired button color
                                ),
                              ),
                              child: Text(
                                'Send OTP',
                                style: TextStyle(
                                    color: InactiveThumbColor,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w400,
                                    fontFamily: AppFonts.Apercu),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 40,
                          ),
                          Row(
                            children: [
                              Expanded(
                                flex: 2,
                                child: Divider(
                                  color: Color(0xff544D64),
                                ),
                              ),
                              Expanded(
                                flex: 1,
                                child: Center(
                                  child: Text(
                                    'or',
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w400,
                                        color: Color(0xff676D75),
                                        fontFamily: AppFonts.Apercu),
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 2,
                                child: Divider(
                                  color: Color(0xff544D64),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          InkWell(
                            onTap: () {},
                            child: Container(
                              margin: EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 5),
                              height: 54,
                              width: 281,
                              decoration: BoxDecoration(
                                color: Color(0xffFDEDD7),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 20),
                                    child: Image.asset(
                                      'assets/icons/google.png',
                                      height: 32,
                                      width: 32,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Text(
                                    'Sign in with google',
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500,
                                      fontFamily: AppFonts.Apercu,
                                      color: Color(0xff333333),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () {},
                            child: Container(
                              margin: EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 5),
                              height: 54,
                              width: 281,
                              decoration: BoxDecoration(
                                color: Color(0xffFDEDD7),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 20),
                                    child: Image.asset(
                                      'assets/icons/apple.png',
                                      height: 32,
                                      width: 32,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Text(
                                    'Sign in with Apple',
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500,
                                      fontFamily: AppFonts.Apercu,
                                      color: Color(0xff333333),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () {},
                            child: Container(
                              margin: EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 5),
                              height: 54,
                              width: 281,
                              decoration: BoxDecoration(
                                color: Color(0xffFDEDD7),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 20),
                                    child: Image.asset(
                                      'assets/icons/facebook.png',
                                      height: 32,
                                      width: 32,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Text(
                                    'Sign in with Facebook',
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500,
                                      fontFamily: AppFonts.Apercu,
                                      color: Color(0xff333333),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "You  have an account ?",
                    style: TextStyle(
                        color: Colors.white, fontFamily: AppFonts.Apercu),
                  ),
                  TextButton(
                    onPressed: () {
                      Get.to(LoginScreen());
                    },
                    child: Text(
                      'Login',
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: AppFonts.Apercu,
                          fontSize: 12,
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
