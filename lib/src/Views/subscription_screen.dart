// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:supportwise/src/ColorScreen/fontfamily.dart';

class SubscriptionScreen extends StatefulWidget {
  const SubscriptionScreen({super.key});

  @override
  State<SubscriptionScreen> createState() => _SubscriptionScreenState();
}

class _SubscriptionScreenState extends State<SubscriptionScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'My Subscription',
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
              Image.asset('assets/images/subscription1.png'),
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
                height: 20,
              ),
              Image.asset("assets/images/subscription2.png"),
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
                height: 50,
              )
            ],
          ),
        ),
      ),
    );
  }
}
