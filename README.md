# rigthtchoice

A new Flutter application for multi choice answers

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

## Commits History (newest on the top)

>> Implemented Reset Quiz functionality
- main.dart >> Added '_resetQuiz()' that calls the 'steState()' function and hence re-draw the 'Quiz' widget as per the new values 
- main.dart >> Added '_resetQuiz' as a Callback parameter to the 'Result' Widget
- result.dart >> Added a new Function parameter i.e. 'resetHandler' and 'ResetQuiz' constructor to accept the '_resetQuiz' callback  
- result.dart >> In order to add a 'Reset Quiz' button, Wrapped Text Widget into a Column Widget.
- result.dart >> Added a 'FlatButton' that calls 'resetHandler' for its 'onPressed' property.

>> Refactored main.dart, quiz.dart and result.dart to implement score calculation and displaying the final result accordingly
- main.dart >> Converted '_questions' List i.e. changed 'answers List<String>' to 'answers List<Map<String, Object>>' 
- main.dart >> 'answers List<Map<String, Object>>' now has two keys i.e. 'text' and 'score' and their associated values.
- quiz.dart >> Refactored 'Question' widget to accept 'List<Map<String, Object>>' instead of 'List<String>'
- quiz.dart >> Refactored implementation of  anonymous function inside Map i.e. 
1. Now we pass 'answer['text']' (which is a Map 'key' of 'answers' List) as parameter instead 'answer' (that was a plain String) to the Answer Widget.
2. Also instead of passing a Callback i.e. 'answerQuestion', we pass an anonymous function/Callback, which that also accepts a Parameter i.e. 'answerQuestion(answer[score])' and gets executed  whenever 'onPressed' is called.   
- main.dart >> Added a new private variable i.e. '_totalScore' to keep track of the final score.
- main.dart >> Refactored '_answerQuestion' method to accept 'int score' as an argument and update the '_totalScore' accordingly.
- main.dart >> Passing the '_totalScore' to the 'Result' widget.
- result.dart >> Added a constructor that accpets an int i.e. 'resultScore'. 
- result.dart >> Added a getter i.e. 'resultPhrase' that returns a String based on the value of 'resultScore'
- result.dart >> Updated the implementation of the 'Center' widget to display the Text based on the value of 'resultPhrase' getter.

>> Refactored 'main.dart', added 'quiz.dart' and 'result.dart' to implement ternary outputs as modularized widgets
- main.dart >> Refactored 'body' widget implementation i.e. to use Quiz() and Result() Widgets instead of Column() and Center() Widgets
- main.dart >> Refactored 'questions' List i.e. made it private to the class i.e. changed it to '_questions'
- quiz.dart >> A new file that return a Column widget that holds a 'Children' widget that eventually holds 'Question' and List of 'Answer' Widgets.
- result.dart >> A new file that return a Center widget that holds a 'Child' widget that eventually holds a Text widget. 

>> Implemented a 'ternary operator', that implements a Columns or a Center widget as body of 'Scaffold', depending on the value of '_questionIndex'
- main.dart >> Scope change --> moved 'questions' List from the 'build' Widget to directly under '_MyAppState' class, so it can accessed throughout the class.
- main.dart >> Made 'questions' as final (meaning once assigned, values of the List can't be changed at RunTime)
- main.dart >> For 'questions' List, Added 'const' before the List initialization, meaning value can't be change during compile time and eventually at runtime.
- main.dart >> Refactored 'main.dart' to use '_questions' instead of 'questions' 
- main.dart >> updated implementation of 'body' widget to choose which widget to implement depending upon the putpu of the Ternary Operator.
- main.dart >> Added 'Center' widget to be returned as body widget if output of "_questionIndex < questions.length" is FALSE
- main.dart >> Updated implementation of '_answerQuestion'

>> Added 'question.dart' that implements 'Answer'(as a Custom Widget), Implemented 'CallBack' and 'Future', List<Map<String, Object>> and Spread Operator i.e. (...)
- main.dart >> Replaced inbuilt 'RaisedButton' widget with 'Answer' Widget i.e. Added new 'answer.dart' file.
- main.dart >> Implemented '_answerQuestion' as Callback for Answer widget i.e. Answer(_answerQuestion)
- answer.dart >> Implemented constructor as a Future as it accepts a Callback i.e. 'Answer(this.selectHandler)'
- main.dart >> Updated 'questions' List i.e. by replacing List<String> with a List<MAP<String, Object>>
- main.dart >> Updated the way to access the question i.e. now it is accessed from the Map using the KEY i.e. 'questionText'
- main.dart >> Accessed each list of 'answers' from the MAP using the KEY i.e. 'answers' and applied '.map' method that takes (and iterates) each element of 
the current 'answers' list and than executes an anonymous function (in this case) and than returns an Answer Widget.
- main.dart >> Answer Widgets retured by the Map method are converted to a List of Widgets and
than appended to the 'Children' List using the Spread Operator i.e. '...'

>> Added 'question.dart' that Implements a custom widget, and in 'main.dart' replaced 'Text' widget with 'Question' widget
- question.dart >> added a new file that provides implementation for a Custom Text widget
- question.dart >> "Question constructor" accepts a String and using that String, "Question class" returns a Custom widget.
- main.dart >> Replaced default Flutter Widget i.e. ‘Text Widget’ with a Custom Widget i.e. "Question" widget

>> Implemented '_answerQuestion', setState, 'MaterialApp' widget that implements an 'appBar' and 'body'
- main.dart >> Implemented a void function i.e. '_answerQuestion' that performs 'setState()' which is an inbuilt function.
- main.dart >> 'setState()' function increments the value of '_questionIndex'
- main.dart >> Added List of Strings i.e. questions
- main.dart >> _MyAppState returns a 'MaterialApp' that implements an 'appBar' and 'body'
- main.dart >> Body returns a 'Column' that returns a 'children' that returns a 'Text' and three 'RaisedButton' widgets