// ignore_for_file: deprecated_member_use, prefer_const_constructors, use_key_in_widget_constructors, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function onClick;
  final String answerText;
  Answer({required this.onClick, required this.answerText});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10.0),
      child: Card(
        child: FlatButton(
          onPressed: () => onClick(),
          child: Text(
            answerText,
            style: TextStyle(
              fontSize: 25.0,
              color: Colors.blue,
            ),
          ),
        ),
      ),
    );
  }
}
