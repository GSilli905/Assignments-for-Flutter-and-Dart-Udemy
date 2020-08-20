// 1) Create a new Flutter App (in this project) and output an AppBar and some text
// below it
// 2) Add a button which changes the text (to any other text of your choice)
// 3) Split the app into three widgets: App, TextControl & Text
import 'package:flutter/material.dart';
import 'text.dart';
import './textcontrol.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _currentText = 0;
  var _textDisplay = '';

  String _textSwitch(int text) {
    setState(() {
      if (_currentText == 0) {
        _textDisplay = 'Text A';
      } else if (_currentText == 1) {
        _textDisplay = 'Text B';
      }
    });
    return _textDisplay;
  }

  void _currentTextSwitch() {
    setState(() {
      if (_currentText == 0) {
        _currentText = 1;
      } else if (_currentText == 1) {
        _currentText = 0;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Assignment 1'),
        ),
        body: UsedText(_textSwitch(_currentText), _currentTextSwitch),
      ),
    );
  }
}
