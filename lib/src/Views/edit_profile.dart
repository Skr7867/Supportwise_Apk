// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:supportwise/src/Views/chang_email_address.dart';

import '../ColorScreen/colors.dart';

class EditProfileScreen extends StatefulWidget {
  const EditProfileScreen({super.key});

  @override
  State<EditProfileScreen> createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Edit Profile',
          style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500,
              fontFamily: 'AppFonts.Apercu Pro'),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(left: 10, right: 10, top: 50),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Edit Name',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'AppFonts.Apercu'),
              ),
              TextFormField(
                decoration: InputDecoration(
                  suffix: Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: SvgPicture.asset('assets/icons/edit-3.svg'),
                  ),
                  hintText: 'Bharti Goyal',
                  hintStyle: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w300,
                      fontFamily: 'AppFonts.Apercu'),
                  contentPadding: EdgeInsets.only(left: 10),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(24.0)),
                    borderSide: BorderSide(color: Colors.yellow),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Edit Email',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'AppFonts.Apercu'),
              ),
              TextFormField(
                decoration: InputDecoration(
                  suffix: Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: InkWell(
                        onTap: () {
                          Get.to(ChangeEmailAddress());
                        },
                        child: SvgPicture.asset('assets/icons/edit-3.svg')),
                  ),
                  hintText: 'bhartigoyal@gmail.com',
                  hintStyle: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w300,
                      fontFamily: 'AppFonts.Apercu'),
                  contentPadding: EdgeInsets.only(left: 10),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(24.0)),
                    borderSide: BorderSide(color: Colors.yellow),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Edit Company',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'AppFonts.Apercu'),
              ),
              TextFormField(
                decoration: InputDecoration(
                  suffix: Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: SvgPicture.asset('assets/icons/edit-3.svg'),
                  ),
                  hintText: 'LoremIpsum',
                  hintStyle: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w300,
                      fontFamily: 'AppFonts.Apercu'),
                  contentPadding: EdgeInsets.only(left: 10),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(24.0)),
                    borderSide: BorderSide(color: Colors.yellow),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Edit Job Title',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'AppFonts.Apercu'),
              ),
              TextFormField(
                decoration: InputDecoration(
                  suffix: Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: SvgPicture.asset('assets/icons/edit-3.svg'),
                  ),
                  hintText: 'Lorem Ipsum',
                  hintStyle: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w300,
                      fontFamily: 'AppFonts.Apercu'),
                  contentPadding: EdgeInsets.only(left: 10),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(24.0)),
                    borderSide: BorderSide(color: Colors.yellow),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 100, left: 90),
                child: ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    minimumSize: MaterialStateProperty.all<Size>(
                      Size(160, 49),
                    ),
                    backgroundColor: MaterialStateProperty.all<Color>(
                      OtpSubmit,
                    ),
                  ),
                  child: Text(
                    'Save Changes',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'AppFonts.Apercu Pro',
                        color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
