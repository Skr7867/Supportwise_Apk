// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import 'package:flutter_svg/svg.dart';

class NavigationScreen extends StatefulWidget {
  const NavigationScreen({Key? key}) : super(key: key);

  @override
  State<NavigationScreen> createState() => _NavigationScreenState();
}

class _NavigationScreenState extends State<NavigationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
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
        ],
      ),
    );
  }
}
