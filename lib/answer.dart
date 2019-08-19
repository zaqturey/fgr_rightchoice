import 'package:flutter/material.dart';

// Quiz class returns a Container Widget
class Answer extends StatelessWidget {

  // Declaring a Property i.e. selectHandler
  // that will hold a value of Function type
  final Function selectHandler;

  final String answerText;

  // Below constructor accept two arguments i.e.
  // 1. a Function >> which is a Future in this case
  // Note: A 'Future' is basically an address/pointer to the actual function
  // 2. a String >> Which is the Text that will be used to display on the 'Answer' widget
  Answer(this.selectHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: RaisedButton(
        color: Colors.blue,
        // Updated the Text widget to use 'answerText' as its value
        child: Text(answerText),
        // Assigning a Future to 'onPressed'
        onPressed: selectHandler,
      ),
    );
  }
}