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