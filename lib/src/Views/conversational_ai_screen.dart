// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../ColorScreen/fontfamily.dart';

class ConversationalAiScreen extends StatelessWidget {
  const ConversationalAiScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Conversational AI',
          style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w500,
              fontFamily: AppFonts.popins),
        ),
      ),
      body: Column(
        children: [
          Image.asset('assets/images/AI.png'),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15, right: 15),
            child: Text(
              'Develop your multilingual AI assistants using both unsupervised and supervised Conversational AI techniques. These assistants will constantly analyze structured and unstructured data, drawing insights from a vast dataset comprising 150 million tickets and over 1.1 billion conversations. Through this analysis, they will autonomously grasp intents and understand various phrases, enabling them to provide self-service solutions across mobile devices and various communication channels like voice, chat, and text, in over 100 languages.',
              textAlign: TextAlign.justify,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                fontFamily: AppFonts.Apercu,
              ),
            ),
          )
        ],
      ),
    );
  }
}
