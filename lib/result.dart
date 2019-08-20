import 'package:flutter/material.dart';

// Quiz class returns a Center Widget
class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;

  Result(this.resultScore, this.resetHandler);

  // Below getter method return the Text to be displayed based on the 'resultScore'
  String get resultPhrase{
    String resultText;

    if(resultScore >= 30) {
      resultText = "You are awesome!";
    } else if (resultScore >= 25) {
      resultText = "Thats pretty likeable";
    } else if (resultScore >= 320) {
      resultText = "You are a bit... starnge!";
    } else {
      resultText = "Better try next time";
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          FlatButton(
            child: Text("Reset Quiz"),
            textColor: Colors.blue,
            onPressed: resetHandler,
          ),
        ],
      ),
    );
  }
}
