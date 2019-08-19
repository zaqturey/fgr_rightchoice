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

        // questions[questionIndex]['answers'] => will return a 'List of Map' associated with 'answers' KEY
        // .Map method will iterate through each Map item of above 'answers' list.
        // Note: Using spread operator (...), we will append all the elements produced by
        // 'toList()' method below to the immediate List.
        // Also Callback "() => answerQuestion(answer['score'])" in the Answer function will be executed on 'onPressed'
        ...(questions[questionIndex]['answers'] as List<Map<String, Object>>).map((answer) {
//          return Answer(answerQuestion, answer['text']);
          return Answer(() => answerQuestion(answer['score']), answer['text']);
        }).toList()
      ],
    );
  }
}
