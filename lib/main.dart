// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, prefer_const_literals_to_create_immutables, duplicate_ignore, avoid_unnecessary_containers, sized_box_for_whitespace, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:quiz_app/answer.dart';
import 'package:quiz_app/questions.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int questionIndex = 0;
  int answerIndex = 0;
  bool isfinished = true;
  List<String> questions = [
    "Whats's Your Favourite Animal ?",
    "What's your Favourite Color ?",
    "Who Your Favourite Instructor ?",
  ];
  List<String> answers = [
    "Tiger",
    "Lion",
    "Elephant",
    "Deer",
    "Red",
    "Black",
    "Blue",
    "White",
    "Jamil As-Ad",
    "Najmul Arifin",
    "Mahmudur Rahman",
    "Rafi Ahmed",
  ];
  void onClick() {
    if (questionIndex < questions.length - 1) {
      setState(() {
        questionIndex = questionIndex + 1;
        answerIndex = answerIndex + 4;
      });
    } else if (questionIndex < questions.length) {
      setState(
        () {
          isfinished = false;
          questionIndex = 0;
          answerIndex = 0;
        },
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Quiz App",
          ),
          centerTitle: true,
        ),
        // ignore: prefer_const_literals_to_create_immutables
        body: isfinished
            ? Column(
                children: [
                  Question(
                    questionText: questions[questionIndex],
                  ),
                  Answer(
                    onClick: onClick,
                    answerText: answers[answerIndex],
                  ),
                  Answer(
                    onClick: onClick,
                    answerText: answers[answerIndex + 1],
                  ),
                  Answer(
                    onClick: onClick,
                    answerText: answers[answerIndex + 2],
                  ),
                  Answer(
                    onClick: onClick,
                    answerText: answers[answerIndex + 3],
                  ),
                ],
              )
            : Container(
                alignment: Alignment.center,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Your Quiz Is finished",
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    FlatButton(
                      onPressed: () {
                        setState(() {
                          isfinished = true;
                        });
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(
                          top: 10.0,
                        ),
                        child: Text(
                          "Reset",
                          style: TextStyle(
                            fontSize: 30,
                            color: Colors.blue,
                          ),
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
