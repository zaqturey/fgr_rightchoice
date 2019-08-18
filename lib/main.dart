import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  // List of MAP<String, Object>
  final _questions = const [
    {
      'questionText': 'What\'s your favorite color?',
      'answers': ['White', 'Pink', 'Blue', 'Black']
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': ['Lion', 'Owl', 'Swan', 'Monkey', 'Cow']
    },
    {
      'questionText': 'What\'s your favorite dish?',
      'answers': ['Malai Kofta', 'Dal Makhani', 'Dum Aloo']
    }
  ];

  // '_answerQuestion' calls the 'setState()' function which in-turn increment the '_questionIndex' by 1.
  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print("Current value of _questionIndex is: $_questionIndex");
    if (_questionIndex < _questions.length) {
      print("We have more questions!");
    } else {
      print("No more questions!");
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Right Choice'),
        ),

        // Adding a Ternary Operator that will depend on 'questions.length'
        body: _questionIndex < _questions.length
            ? Quiz(
                questions: _questions,
                questionIndex: _questionIndex,
                answerQuestion: _answerQuestion,
              )
            : Result(),
      ),
    );
  }
}
