// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:readmore/readmore.dart';

import '../ColorScreen/colors.dart';
import '../ColorScreen/fontfamily.dart';
import '../common/const.dart';

class DemoBuy1 extends StatefulWidget {
  const DemoBuy1({Key? key}) : super(key: key);

  @override
  _ScreenReviewState createState() => _ScreenReviewState();
}

class _ScreenReviewState extends State<DemoBuy1>
    with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(),
        body: Column(
          children: [
            Image.asset('assets/images/support.png'),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 130),
              child: Text(
                'Customer Support Service\nBasics (Demo)',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  fontFamily: AppFonts.ApercuPro,
                ),
              ),
            ),
            TabBar(
              indicatorPadding: EdgeInsets.zero,
              indicatorColor: Colors.blue,
              labelColor: Colors.black,
              unselectedLabelColor: Colors.grey,
              controller: tabController,
              isScrollable: true,
              labelPadding: EdgeInsets.only(
                right: 30,
              ),
              tabs: [
                Tab(
                  child: Text("Course"),
                ),
                Tab(
                  child: Text("Review"),
                ),
                Tab(
                  child: Text("About"),
                ),
              ],
            ),
            Expanded(
              child: TabBarView(
                controller: tabController,
                children: [
                  Center(child: Text('course')),
                  ListView.builder(
                    physics: BouncingScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: reviewphoto.length,
                    itemBuilder: (context, index) {
                      return ListTile(
                        title: Text(
                          reviewtitle[index],
                          style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w400,
                              fontFamily: AppFonts.Apercu,
                              color: Color(0xff3DCBB1)),
                        ),
                        leading: Image.asset(
                          reviewphoto[index],
                          height: 24,
                          width: 24,
                        ),
                        subtitle: ReadMoreText(
                          reviewsubtitle[index],
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              fontFamily: AppFonts.Apercu,
                              color: HelpColor),
                          lessStyle: TextStyle(
                            color: Color(0xff3DCBB1),
                          ),
                          trimExpandedText: 'See Less',
                          trimCollapsedText: 'View More',
                          trimLines: 5,
                          trimMode: TrimMode.Line,
                          moreStyle: TextStyle(
                            color: Color(0xff3DCBB1),
                          ),
                        ),
                      );
                    },
                  ),
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.only(left: 15, right: 15, top: 60),
                      child: Text(
                        "Vue (pronounced /vjuː/, like view) is a progressive framework for building user interfaces. Unlike other monolithic frameworks, Vue is designed from the ground up to be incrementally adoptable. The core library is focused on the view layer only, and is easy to pick up and integrate with other libraries or existing projects. On the other hand, Vue is also perfectly capable of powering sophisticated Single-Page Applications when used in combination with modern tooling and supporting libraries.",
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            fontFamily: AppFonts.Apercu,
                            color: HelpColor),
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 5, bottom: 15),
                  child: InkWell(
                    onTap: () {},
                    child: Container(
                      height: 41,
                      width: 171,
                      decoration: BoxDecoration(
                          border: Border.all(color: BorderColor),
                          borderRadius: BorderRadius.circular(14)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset('assets/icons/like.svg'),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            'Wishlist',
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                fontFamily: AppFonts.Apercu,
                                color: HelpColor),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 15),
                  child: Container(
                    height: 41,
                    width: 171,
                    decoration: BoxDecoration(
                        color: BorderColor,
                        border: Border.all(color: BorderColor),
                        borderRadius: BorderRadius.circular(14)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          'Buy',
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              fontFamily: AppFonts.Apercu,
                              color: InactiveThumbColor),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(
    MaterialApp(
      home: DemoBuy1(),
    ),
  );
}
