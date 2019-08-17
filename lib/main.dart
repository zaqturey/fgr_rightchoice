import 'package:flutter/material.dart';
import './question.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp>{
  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      if(_questionIndex == 2){
        _questionIndex = -1;
      }
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {

    // List of Strings(Questions)
    var questions = [
      'What\'s your favorite color?',
      'What\'s your favorite animal?',
      'What\'s your favorite dish?'
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Right Choice'),
        ),
        body: Column(
          children: [
            Question(questions[_questionIndex]),
            RaisedButton(
              child: Text('Option 1'),
              onPressed: _answerQuestion,
            ),
            RaisedButton(
              child: Text('Option 2'),
              onPressed: _answerQuestion,
            ),
            RaisedButton(
              child: Text('Option 3'),
              onPressed: _answerQuestion,
            ),
          ],
        ),
      ),
    );
  }
}