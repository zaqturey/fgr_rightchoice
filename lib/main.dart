import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

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

    // List of MAP<String, Object>
    var questions = [
      {
        'questionText' : 'What\'s your favorite color?',
        'answers' : ['White', 'Pink', 'Blue', 'Black']
      },
      {
        'questionText' : 'What\'s your favorite animal?',
        'answers' : ['Lion', 'Owl', 'Swan', 'Monkey', 'Cow']
      },
      {
        'questionText' : 'What\'s your favorite dish?',
        'answers' : ['Malai Kofta', 'Dal Makhani', 'Dum Aloo']
      }
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Min Kul Appen'),
        ),
        body: Column(
          children: [
            // Accessing the MAP Item based on the index i.e. '_questionIndex'
            // and then fetching the VALUE based on the KEY in that item.
            Question(
              questions[_questionIndex]['questionText'],
            ),

            // Accessing a MAP element from 'questions' LIST based on '_questionIndex'
            // and than Accessing the 'List of Values' based on the 'answers' KEY in that MAP
            // So we  will get this list i.e. --> questions[_questionIndex]['answers']
            // Note: Using spread operator (...), we will append all the elements produced by
            // 'toList()' method below to the 'Children:' list above.
            ...(questions[_questionIndex]['answers'] as List<String>).map((answerelement) {
              return Answer(_answerQuestion, answerelement);
            }).toList()
          ],
        ),
      ),
    );
  }
}