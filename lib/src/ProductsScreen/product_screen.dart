// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:supportwise/src/ColorScreen/fontfamily.dart';

class ProductScreen extends StatefulWidget {
  const ProductScreen({super.key});

  @override
  State<ProductScreen> createState() => _ProductsScreenState();
}

class _ProductsScreenState extends State<ProductScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Products',
          style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w500,
              fontFamily: AppFonts.Apercu),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(left: 10, right: 10, top: 20),
          child: Column(
            children: [
              Image.asset("assets/images/subscription2.png"),
              SizedBox(
                height: 20,
              ),
              Text(
                'ChatWise AI',
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w500,
                    fontFamily: AppFonts.Apercu),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10, top: 5),
                child: Text(
                  'Conversational Automation Powered by AI',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                      fontFamily: AppFonts.Apercu),
                  textAlign: TextAlign.center,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 10, left: 10, top: 5),
                child: Text(
                  'Enhance the self-service process by incorporating intelligent virtual agents capable of understanding, empathizing, and efficiently resolving issues on a large scale.',
                  style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w300,
                      fontFamily: AppFonts.Apercu,
                      color: Colors.grey),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Image.asset('assets/images/subscription1.png'),
              SizedBox(
                height: 20,
              ),
              Text(
                'Agent Boost',
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w500,
                    fontFamily: AppFonts.Apercu,
                    color: Color(0xff181818)),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10, top: 5),
                child: Text(
                  'Software for Agent Assistance And Real-Time AI Coaching',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                      fontFamily: AppFonts.Apercu,
                      color: Color(0xff181818)),
                  textAlign: TextAlign.center,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10, top: 5),
                child: Text(
                  'Enhance agent effectiveness and efficiency through real-time guidance and workflow streamlining.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w300,
                      fontFamily: AppFonts.Apercu,
                      color: Colors.grey),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Image.asset('assets/images/product2.png'),
              SizedBox(
                height: 20,
              ),
              Text(
                'Wise Capture',
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w500,
                    fontFamily: AppFonts.Apercu,
                    color: Color(0xff181818)),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 10,
                  right: 10,
                ),
                child: Text(
                  'Enterprise Recording Software',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                      fontFamily: AppFonts.Apercu,
                      color: Color(0xff181818)),
                  textAlign: TextAlign.center,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10, top: 5),
                child: Text(
                  'Capture high-quality, AI-ready recording data from every interaction to understand the true voice of your customers.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w300,
                      fontFamily: AppFonts.Apercu,
                      color: Colors.grey),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Image.asset('assets/images/product1.png'),
              SizedBox(
                height: 20,
              ),
              Text(
                'Wise Talk',
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w500,
                    fontFamily: AppFonts.Apercu,
                    color: Color(0xff181818)),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 10,
                  right: 10,
                ),
                child: Text(
                  'Speech analytics software for call centers powered by AI.',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                      fontFamily: AppFonts.Apercu,
                      color: Color(0xff181818)),
                  textAlign: TextAlign.center,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10, top: 5),
                child: Text(
                  'Capture high-quality, AI-ready recording data from every interaction to understand the true voice of your customers.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w300,
                      fontFamily: AppFonts.Apercu,
                      color: Colors.grey),
                ),
              ),
              SizedBox(
                height: 40,
              )
            ],
          ),
        ),
      ),
    );
  }
}
