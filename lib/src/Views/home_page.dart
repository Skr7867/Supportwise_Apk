// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:get/utils.dart';

import '../ColorScreen/fontfamily.dart';
import '../common/drawer.dart';
import 'container.dart';
import 'demo_screen.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: CustomDrawer(),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            floating: true,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Image.asset(
                  'assets/images/logo.png',
                  height: 53,
                  width: 66,
                ),
                Text(
                  'SupportWise',
                  style: TextStyle(
                      fontFamily: "AppFonts.Apercu",
                      fontSize: 20,
                      fontWeight: FontWeight.w500),
                ),
              ],
            ),
          ),
          SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ListTile(
                  title: Text(
                    'Hello, Bharti Goyal',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'popins'),
                  ),
                  subtitle: Text(
                    'What can i help today',
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'popins'),
                  ),
                  trailing: Image.asset('assets/images/profile.png'),
                ),
                SizedBox(
                  height: 20,
                ),
                InkWell(
                    onTap: () {
                      Get.to(MyForm());
                    },
                    child: Image.asset('assets/images/banner1.png')),
                SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 17),
                  child: Text(
                    'Profile Completion',
                    style: TextStyle(
                        fontFamily: 'popins',
                        fontWeight: FontWeight.w400,
                        fontSize: 16),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 15, top: 5),
                  width: 330,
                  height: 13,
                  child: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    child: LinearProgressIndicator(
                      value: 0.8,
                      valueColor:
                          AlwaysStoppedAnimation<Color>(Color(0xffF8A435)),
                      backgroundColor: Color(0xffD6D6D6),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 16, top: 5),
                  child: Text(
                    'Please complete the profile by Feb 22',
                    style: TextStyle(
                        color: Color(0xff4A5F67),
                        fontWeight: FontWeight.w400,
                        fontSize: 14),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Text(
                    'Our Professional Services',
                    style: TextStyle(
                        fontFamily: 'popins',
                        fontWeight: FontWeight.w600,
                        fontSize: 20),
                  ),
                ),
                SizedBox(
                  height: 127,
                  width: double.infinity,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 3,
                    itemBuilder: (context, index) {
                      return CardContainer();
                    },
                  ),
                ),
                SizedBox(
                  height: 30,
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
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 8),
                      height: 173,
                      width: 121,
                      decoration: BoxDecoration(
                        color: Color(0xffF2F6FF),
                        border: Border.all(color: Colors.white, width: 3),
                        borderRadius: BorderRadius.circular(16),
                        boxShadow: [
                          BoxShadow(
                            color: Color.fromARGB(255, 54, 63, 173)
                                .withOpacity(0.2), // shadow color
                            spreadRadius:
                                10, // how much the shadow should spread
                            blurRadius: 40, // how blurry the shadow should be
                            offset: Offset(20, 14),
                            // changes the shadow position
                          ),
                        ],
                      ),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'Activities',
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: Color(0xff868686),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                            padding: EdgeInsets.all(2),
                            child: Badge(
                              backgroundColor: Colors.white,
                              alignment: AlignmentDirectional.topEnd,
                              largeSize: 24,
                              textStyle: TextStyle(fontSize: 14),
                              textColor: Colors.black,
                              label: Text("32"),
                              child:
                                  SvgPicture.asset('assets/images/graph.svg'),
                              isLabelVisible: true,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'You have new activities',
                            style: TextStyle(
                              fontFamily: 'AppFonts.Apercu',
                              fontSize: 8,
                              fontWeight: FontWeight.w400,
                              color: Color(0xff868686),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SvgPicture.asset('assets/icons/bluearrow.svg'),
                              TextButton(
                                onPressed: () {},
                                child: Text(
                                  'GO TO ACTIVITIES',
                                  style: TextStyle(
                                      fontSize: 6,
                                      fontWeight: FontWeight.w400,
                                      color: Color(0xff5D5DFF)),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 30),
                      height: 170,
                      width: 159,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.white, width: 3),
                        borderRadius: BorderRadius.circular(16),
                        color: Color(0xffF2F6FF),
                        boxShadow: [
                          BoxShadow(
                            color: Color.fromARGB(255, 54, 63, 173)
                                .withOpacity(0.2), // shadow color
                            spreadRadius:
                                10, // how much the shadow should spread
                            blurRadius: 15, // how blurry the shadow should be
                            offset: Offset(6, 8), // changes the shadow position
                          ),
                        ],
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SvgPicture.asset(
                            'assets/images/Frame 11.svg',
                            height: 80,
                            width: 78,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 8),
                            child: Text(
                              'Top Freelancers',
                              style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  color: Color(0xff3E3E3E),
                                  fontSize: 15),
                            ),
                          ),
                          Image.asset(
                            'assets/images/freelancer.png',
                            height: 50,
                          )
                        ],
                      ),
                    ),
                    Image.asset(
                      'assets/images/female.png',
                      width: 40,
                    )
                  ],
                ),
                SizedBox(
                  height: 70,
                ),
                Center(
                  child: Text(
                    'Helping 4,000 creators to make big everyday...',
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 15,
                        fontFamily: 'AppFonts.Apercu Pro'),
                  ),
                ),
                Image.asset('assets/images/group.png'),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    children: [
                      Text(
                        'We’re trusted by some of the world’s best brands.',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 18,
                            fontFamily: AppFonts.Apercu,
                            fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'We create and deploy enterprise-grade solutions for over 1,500 clients, including major players in finance, healthcare, technology, telecom, and retail."',
                        style: TextStyle(
                            fontSize: 14,
                            fontFamily: AppFonts.Apercu,
                            fontWeight: FontWeight.w300),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      SvgPicture.asset('assets/images/sponsor.svg'),
                      SizedBox(
                        height: 100,
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
