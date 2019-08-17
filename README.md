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

>> Added a new 'question.dart' file that Implemented a custom widget, and in 'main.dart' replaced 'Text' widget with 'Question' widget
- question.dart >> added a new file that provides implementation for a Custom Text widget
- question.dart >> "Question constructor" accepts a String and using that String, "Question class" returns a Custom widget.
- main.dart >> Replaced default Flutter Widget i.e. ‘Text Widget’ with a Custom Widget i.e. "Question" widget




>> Implemented '_answerQuestion', setState, 'MaterialApp' widget that implements an 'appBar' and 'body'
- main.dart >> Implemented a void function i.e. '_answerQuestion' that performs 'setState()' which is an inbuilt function.
- main.dart >> 'setState()' function increments the value of '_questionIndex'
- main.dart >> Added List of Strings i.e. questions
- main.dart >> _MyAppState returns a 'MaterialApp' that implements an 'appBar' and 'body'
- main.dart >> Body returns a 'Column' that returns a 'children' that returns a 'Text' and three 'RaisedButton' widgets