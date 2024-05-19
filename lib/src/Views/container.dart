// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../ColorScreen/colors.dart';

class CardContainer extends StatelessWidget {
  const CardContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 7),
      height: 130,
      width: 348,
      decoration: BoxDecoration(
          border: Border.all(color: Color(0xffF8A435)),
          borderRadius: BorderRadius.circular(10)),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Image.asset(
              'assets/images/image 4.png',
              width: 93,
              height: 96,
            ),
          ),
          SizedBox(
            width: 20,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 13,
              ),
              Text(
                'Customer Support Service\nBasic (Demo)',
                style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'popins'),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                '1500/- 1700/-',
                style: TextStyle(
                    fontFamily: 'popins',
                    fontSize: 12,
                    fontWeight: FontWeight.w400),
              ),
              Row(
                children: [
                  Text(
                    'Month',
                    style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'popins'),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: SvgPicture.asset(
                      'assets/images/minus.svg',
                      height: 35,
                      width: 35,
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    '1',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: SvgPicture.asset(
                      'assets/images/plus.svg',
                      height: 35,
                      width: 35,
                    ),
                  ),
                  Container(
                    height: 35,
                    width: 35,
                    decoration: BoxDecoration(
                      border: Border.all(color: StarColor),
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: IconButton(
                      onPressed: () {},
                      icon: SvgPicture.asset(
                        'assets/images/Delete.svg',
                        height: 60,
                        width: 60,
                      ),
                    ),
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
