// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:supportwise/src/Views/login_screen.dart';
import 'package:supportwise/src/Views/otp_verification_screen.dart';
import 'package:supportwise/src/files/controller/controller.dart';

import '../ColorScreen/colors.dart';
import '../ColorScreen/fontfamily.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  State<SignupScreen> createState() => _NavigationScreenState();
}

class _NavigationScreenState extends State<SignupScreen> {
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
                      margin: EdgeInsets.only(top: 70, left: 20, right: 20),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'Signup Here',
                            style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.w700,
                                fontFamily: AppFonts.Apercu),
                          ),
                          Text(
                            'Create your account and get started!',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                                fontFamily: AppFonts.Apercu),
                          ),
                          SizedBox(
                            height: 100,
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width / 0.98,
                            height: MediaQuery.of(context).size.height / 3,
                            child: Column(
                              children: [
                                Expanded(
                                  child: TextFormField(
                                    controller: signupNameController,
                                    decoration: InputDecoration(
                                      hintText: 'Name',
                                      hintStyle: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w400,
                                        fontFamily: AppFonts.Apercu,
                                        color: Color(0xff626262),
                                      ),
                                      filled: true,
                                      fillColor: Color(0xffF1F4FF),
                                      contentPadding: EdgeInsets.only(left: 10),
                                      border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          borderSide: BorderSide.none),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Expanded(
                                  child: TextFormField(
                                    controller: signupEmailController,
                                    decoration: InputDecoration(
                                      hintText: 'Email',
                                      hintStyle: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w400,
                                        fontFamily: AppFonts.Apercu,
                                        color: Color(0xff626262),
                                      ),
                                      filled: true,
                                      fillColor: Color(0xffF1F4FF),
                                      contentPadding: EdgeInsets.only(left: 10),
                                      border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          borderSide: BorderSide.none),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Expanded(
                                  child: TextFormField(
                                    controller: signupPasswordController,
                                    decoration: InputDecoration(
                                      hintText: 'Password',
                                      hintStyle: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w400,
                                        fontFamily: AppFonts.Apercu,
                                        color: Color(0xff626262),
                                      ),
                                      filled: true,
                                      fillColor: Color(0xffF1F4FF),
                                      contentPadding: EdgeInsets.only(left: 10),
                                      border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          borderSide: BorderSide.none),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Expanded(
                                  child: TextFormField(
                                    controller: signupCnfpasswordController,
                                    decoration: InputDecoration(
                                      hintText: 'Confirm Password',
                                      hintStyle: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w400,
                                        fontFamily: AppFonts.Apercu,
                                        color: Color(0xff626262),
                                      ),
                                      filled: true,
                                      fillColor: Color(0xffF1F4FF),
                                      contentPadding: EdgeInsets.only(left: 10),
                                      border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          borderSide: BorderSide.none),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 10),
                            child: ElevatedButton(
                              onPressed: () {
                                Get.to(OtpVerifyScreen());
                              },
                              style: ButtonStyle(
                                minimumSize: MaterialStateProperty.all<Size>(
                                  Size(350, 48),
                                ),
                                backgroundColor:
                                    MaterialStateProperty.all<Color>(
                                  Color(0xff474646),
                                ),
                              ),
                              child: Text(
                                'Sign In',
                                style: TextStyle(
                                    color: InactiveThumbColor,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w400,
                                    fontFamily: AppFonts.Apercu),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            'or continue with',
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                fontFamily: AppFonts.popins,
                                color: Colors.grey),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                width: 55,
                                height: 40,
                                decoration: BoxDecoration(
                                  color: Color(0xffECECEC),
                                  borderRadius: BorderRadius.circular(10),
                                  image: DecorationImage(
                                    image: AssetImage(
                                      "assets/icons/google1.png",
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Container(
                                width: 55,
                                height: 40,
                                decoration: BoxDecoration(
                                  color: Color(0xffECECEC),
                                  borderRadius: BorderRadius.circular(10),
                                  image: DecorationImage(
                                    image: AssetImage(
                                      "assets/icons/facebook1.png",
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Container(
                                width: 55,
                                height: 40,
                                decoration: BoxDecoration(
                                  color: Color(0xffECECEC),
                                  borderRadius: BorderRadius.circular(10),
                                  image: DecorationImage(
                                    image: AssetImage(
                                      "assets/icons/apple1.png",
                                    ),
                                  ),
                                ),
                              ),
                            ],
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
