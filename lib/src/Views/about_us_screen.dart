// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import '../ColorScreen/colors.dart';
import '../ColorScreen/fontfamily.dart';

class AboutUsScreen extends StatelessWidget {
  const AboutUsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'About Us',
          style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500,
              fontFamily: AppFonts.ApercuPro,
              color: Color(0xff2A2A2A)),
        ),
      ),
      body: Container(
        margin: EdgeInsets.only(left: 15, right: 15, top: 30),
        child: Column(
          children: [
            Text(
              'As AI continues to advance, every aspect of customer interaction within businesses will undergo significant transformation. We believe in harnessing this technology to seamlessly integrate into daily operations, creating a more immersive and human-centric experience for both customers and employees. SupportWise stands out as the pioneering AI-centric company designed for scalability, embedding AI throughout the enterprise journey. Our cutting-edge platform integrates voice, video, text, and data into a unified ecosystem, powered by Generative AI, Knowledge AI, Emotion AI, and workflow automation. Acting as a trusted co-pilot, we leverage these technologies to enhance customer and employee experiences, making SupportWise the driving force behind the most captivating interactions in the world of business.',
              textAlign: TextAlign.justify,
              style: TextStyle(
                  height: 1.6,
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  fontFamily: AppFonts.Apercu,
                  color: HelpColor),
            )
          ],
        ),
      ),
    );
  }
}
