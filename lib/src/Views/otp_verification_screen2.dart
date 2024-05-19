// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../ColorScreen/colors.dart';
import '../common/app_navigator.dart';

class OtpScreen2 extends StatefulWidget {
  const OtpScreen2({super.key});

  @override
  State<OtpScreen2> createState() => _OtpVerifyScreenState();
}

class _OtpVerifyScreenState extends State<OtpScreen2> {
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
                height: h - 70,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(50),
                      bottomLeft: Radius.circular(50),
                    )),
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
                      padding: EdgeInsets.only(top: 30),
                      alignment: Alignment.topLeft,
                      height: 500,
                      width: 500,
                      child: IconButton(
                        onPressed: () {
                          Get.back();
                        },
                        icon: Icon(Icons.arrow_back),
                      ),
                    ),
                    Stack(
                      alignment: Alignment.topCenter,
                      children: [
                        Container(
                          margin: EdgeInsets.only(
                            top: 80,
                          ),
                          decoration: BoxDecoration(
                              color: Colors.transparent,
                              borderRadius: BorderRadius.vertical(
                                  bottom: Radius.circular(30))),
                          height: MediaQuery.of(context).size.height - 140,
                          width: MediaQuery.of(context).size.width,
                          child: SingleChildScrollView(
                            child: Column(
                              children: [
                                SvgPicture.asset(
                                    'assets/images/Rating (1).svg'),
                                Container(
                                  margin: const EdgeInsets.only(top: 20),
                                  child: const Text(
                                    'OTP Verification',
                                    style: TextStyle(
                                        fontSize: 22,
                                        fontWeight: FontWeight.w500,
                                        fontFamily: 'AppFonts.Apercu',
                                        color: Color(0xff474646)),
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                RichText(
                                  text: TextSpan(
                                    style: TextStyle(
                                      fontSize: 20.0,
                                      color: Colors.black,
                                    ),
                                    children: const <TextSpan>[
                                      TextSpan(
                                        text:
                                            'We will send you a one time password on\n                this ',
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.w400,
                                            fontFamily: 'AppFonts.Apercu'),
                                      ),
                                      TextSpan(
                                        text: 'Mobile Number',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 15,
                                            fontWeight: FontWeight.w500,
                                            fontFamily: 'AppFonts.Apercu'),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                Text(
                                  '+91 - 0123456789',
                                  style: TextStyle(
                                      fontFamily: 'AppFonts.Apercu',
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500),
                                ),
                                SizedBox(height: 20),
                                Form(
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        left: 30, right: 30),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        SizedBox(
                                          height: 50,
                                          width: 50,
                                          child: TextFormField(
                                            cursorColor: Color(0xffF49517),
                                            onChanged: (value) {
                                              if (value.length == 1) {
                                                FocusScope.of(context)
                                                    .nextFocus();
                                              }
                                            },
                                            decoration: InputDecoration(
                                              focusedBorder: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(60.0),
                                                borderSide: BorderSide(
                                                  color: Color(0xffF49517),
                                                ),
                                              ),
                                              border: OutlineInputBorder(
                                                // Sets a border
                                                borderRadius:
                                                    BorderRadius.circular(60.0),
                                                borderSide: BorderSide(
                                                  color: Color(0xffF49517),
                                                ),
                                              ),
                                            ),
                                            style: Theme.of(context)
                                                .textTheme
                                                .headline5,
                                            keyboardType: TextInputType.number,
                                            textAlign: TextAlign.center,
                                            inputFormatters: [
                                              LengthLimitingTextInputFormatter(
                                                  1),
                                              FilteringTextInputFormatter
                                                  .digitsOnly
                                            ],
                                          ),
                                        ),
                                        SizedBox(
                                          height: 50,
                                          width: 50,
                                          child: TextFormField(
                                            cursorColor: Color(0xffF49517),
                                            onChanged: (value) {
                                              if (value.length == 1) {
                                                FocusScope.of(context)
                                                    .nextFocus();
                                              }
                                            },
                                            decoration: InputDecoration(
                                              focusedBorder: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(60.0),
                                                borderSide: BorderSide(
                                                  color: Color(0xffF49517),
                                                ),
                                              ),
                                              border: OutlineInputBorder(
                                                // Sets a border
                                                borderRadius:
                                                    BorderRadius.circular(60.0),
                                                borderSide: BorderSide(
                                                  color: Color(0xffF49517),
                                                ),
                                              ),
                                            ),
                                            style: Theme.of(context)
                                                .textTheme
                                                .headline5,
                                            keyboardType: TextInputType.number,
                                            textAlign: TextAlign.center,
                                            inputFormatters: [
                                              LengthLimitingTextInputFormatter(
                                                  1),
                                              FilteringTextInputFormatter
                                                  .digitsOnly
                                            ],
                                          ),
                                        ),
                                        SizedBox(
                                          height: 50,
                                          width: 50,
                                          child: TextFormField(
                                            cursorColor: Color(0xffF49517),
                                            onChanged: (value) {
                                              if (value.length == 1) {
                                                FocusScope.of(context)
                                                    .nextFocus();
                                              }
                                            },
                                            decoration: InputDecoration(
                                              focusedBorder: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(60.0),
                                                borderSide: BorderSide(
                                                  color: Color(0xffF49517),
                                                ),
                                              ),
                                              border: OutlineInputBorder(
                                                // Sets a border
                                                borderRadius:
                                                    BorderRadius.circular(60.0),
                                                borderSide: BorderSide(
                                                  color: Color(0xffF49517),
                                                ),
                                              ),
                                            ),
                                            style: Theme.of(context)
                                                .textTheme
                                                .headline5,
                                            keyboardType: TextInputType.number,
                                            textAlign: TextAlign.center,
                                            inputFormatters: [
                                              LengthLimitingTextInputFormatter(
                                                  1),
                                              FilteringTextInputFormatter
                                                  .digitsOnly
                                            ],
                                          ),
                                        ),
                                        SizedBox(
                                          height: 50,
                                          width: 50,
                                          child: TextFormField(
                                            cursorColor: Color(0xffF49517),
                                            onChanged: (value) {
                                              if (value.length == 1) {
                                                FocusScope.of(context)
                                                    .nextFocus();
                                              }
                                            },
                                            decoration: InputDecoration(
                                              focusedBorder: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(60.0),
                                                borderSide: BorderSide(
                                                  color: Color(0xffF49517),
                                                ),
                                              ),
                                              border: OutlineInputBorder(
                                                // Sets a border
                                                borderRadius:
                                                    BorderRadius.circular(60.0),
                                                borderSide: BorderSide(
                                                  color: Color(0xffF49517),
                                                ),
                                              ),
                                            ),
                                            style: Theme.of(context)
                                                .textTheme
                                                .headline5,
                                            keyboardType: TextInputType.number,
                                            textAlign: TextAlign.center,
                                            inputFormatters: [
                                              LengthLimitingTextInputFormatter(
                                                  1),
                                              FilteringTextInputFormatter
                                                  .digitsOnly
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 70,
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(right: 10, left: 3),
                                  child: ElevatedButton(
                                    onPressed: () {
                                      Get.to(NavigationMenu());
                                    },
                                    style: ButtonStyle(
                                      minimumSize:
                                          MaterialStateProperty.all<Size>(
                                        Size(259, 39),
                                      ),
                                      backgroundColor:
                                          MaterialStateProperty.all<Color>(
                                        OtpSubmit,
                                      ),
                                    ),
                                    child: Text(
                                      'Submit',
                                      style: TextStyle(
                                          color: Color(0xffFFFFFF),
                                          fontWeight: FontWeight.w700,
                                          fontSize: 15,
                                          fontFamily: 'AppFonts.Apercu'),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "You  have an account?",
                    style: TextStyle(
                        color: Colors.white, fontFamily: 'AppFonts.Apercu'),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'Login',
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'AppFonts.Apercu',
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
