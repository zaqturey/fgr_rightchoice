import 'package:flutter/material.dart';

// Question class returns a Container Widget
class Question extends StatelessWidget {
  final String questionText;

  // Question class Constructor accepts a 'String' argument
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