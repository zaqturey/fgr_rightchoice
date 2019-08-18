import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

// Quiz class returns a Column Widget
class Quiz extends StatelessWidget {

  final List<Map<String, Object>> questions;
  final int questionIndex;
  final Function answerQuestion;

  // Quiz class Constructor accepts three Required Named arguments i.e.
  // questions, questionIndex and answerQuestion
  Quiz({
    @required this.questions,
    @required this.questionIndex,
    @required this.answerQuestion,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // questions[questionIndex]['questionText'] => will return a 'String', associated with 'questionText' KEY
        // that will be passed as a parameter to 'Question' class.
        // How: questions is a 'List of Map', accessing the MAP Item based on the index i.e. 'questionIndex'
        // and then fetching the VALUE based on the 'questionText' KEY in that item.
        Question(
          questions[questionIndex]['questionText'],
        ),

        // questions[questionIndex]['answers'] => will return a 'List of Strings' associated with 'answers' KEY
        // .Map method will iterate through each item of that list.
        // Note: Using spread operator (...), we will append all the elements produced by
        // 'toList()' method below to the immediate List.
        ...(questions[questionIndex]['answers'] as List<String>).map((answerelement) {
          return Answer(answerQuestion, answerelement);
        }).toList()
      ],
    );
  }
}
