import 'package:flutter/material.dart';

// Question class accepts a 'String' argument and returns a
// Custom Widget i.e. Question
class Question extends StatelessWidget {

  final String questionText;

  // Implementing a positional constructor
  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      width: double.infinity,
      child: Text(
        questionText,
        style: TextStyle(fontSize: 28),
        textAlign: TextAlign.center,
      ),
    );
  }
}