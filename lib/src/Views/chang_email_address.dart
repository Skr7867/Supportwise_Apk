// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import '../ColorScreen/colors.dart';
import '../files/controller/controller.dart';

class ChangeEmailAddress extends StatefulWidget {
  const ChangeEmailAddress({super.key});

  @override
  State<ChangeEmailAddress> createState() => _ChangeEmailScreenState();
}

class _ChangeEmailScreenState extends State<ChangeEmailAddress> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Change Email Address',
          style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
              fontFamily: 'AppFonts.Apercu'),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(left: 10, right: 10, top: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Your current email address',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'AppFonts.Apercu Pro'),
              ),
              Container(
                height: 52,
                width: 350,
                decoration: BoxDecoration(
                    color: Color(0xffEFEFF0),
                    borderRadius: BorderRadius.circular(8)),
                child: TextField(
                  cursorColor: ButtonColor,
                  controller: currentemailController,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(bottom: 13, left: 10),
                    border: InputBorder.none,
                    label: Text(''),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Enter your new email address',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'AppFonts.Apercu Pro'),
              ),
              Container(
                height: 52,
                width: 360,
                decoration: BoxDecoration(
                    color: Color(0xffEFEFF0),
                    borderRadius: BorderRadius.circular(8)),
                child: TextField(
                  cursorColor: ButtonColor,
                  controller: newemailController,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(bottom: 13, left: 10),
                    border: InputBorder.none,
                    label: Text(''),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                'Confirm your new email address by entering it again',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'AppFonts.Apercu Pro'),
              ),
              Container(
                height: 52,
                width: 360,
                decoration: BoxDecoration(
                    color: Color(0xffEFEFF0),
                    borderRadius: BorderRadius.circular(8)),
                child: TextField(
                  cursorColor: ButtonColor,
                  controller: confirmemailController,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(bottom: 13, left: 10),
                    border: InputBorder.none,
                    label: Text(''),
                  ),
                ),
              ),
              SizedBox(
                height: 180,
              ),
              Text(
                'Note: A confirmation link will be sent to your new email address for verification.',
                style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w300,
                    fontFamily: 'AppFonts.Apercu'),
              ),
              SizedBox(
                height: 15,
              ),
              ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                  minimumSize: MaterialStateProperty.all<Size>(
                    Size(350, 48),
                  ),
                  backgroundColor: MaterialStateProperty.all<Color>(
                    OtpSubmit,
                  ),
                ),
                child: Text(
                  'Update Email Address',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'AppFonts.Apercu Pro',
                      color: Colors.white),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
