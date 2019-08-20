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
  var _totalScore = 0;

  void _resetQuiz() {
    // This will trigger the 'build' widget and hence draw the 'Quiz' widget as per the new values
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  // List of MAP<String, Object>
  final _questions = const [
    {
      'questionText': 'What\'s your favorite color?',
      // Changed answers as 'List<String>' to 'List<Map<String, Objects>>'
      'answers': [
        {'text' : 'White', 'score' : 8},
        {'text' : 'Pink', 'score' : 10},
        {'text' : 'Blue', 'score' : 5},
        {'text' : 'Black', 'score' : 2},
      ]
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': [
        {'text' : 'Lion', 'score' : 7 },
        {'text' : 'Owl', 'score' : 8 },
        {'text' : 'Swan', 'score' : 9 },
        {'text' : 'Monkey', 'score' : 9 },
        {'text' : 'Cow', 'score' : 10 },
      ]
    },
    {
      'questionText': 'What\'s your favorite dish?',
      'answers': [
        {'text' : 'Malai Kofta', 'score' : 10 },
        {'text' : 'Dal Makhani', 'score' : 8 },
        {'text' : 'Dum Aloo', 'score' : 7 },
      ]
    }
  ];

  // '_answerQuestion' calls the 'setState()' function which in-turn increment the '_questionIndex' by 1.
  // it also accepts 'score' as an argument and update the value of '_totalScore' accordingly
  void _answerQuestion(int score) {

    // Updating the value of '_totalScore' with the 'score' each time '_answerQuestion' is called
    _totalScore += score;
    print(_totalScore);

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
            // Passing the '_resetQuiz' Callback
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
