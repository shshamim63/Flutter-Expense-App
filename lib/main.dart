import 'package:flutter/material.dart';
import 'package:flutter_first_project/result.dart';

import './quiz.dart';
import './result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  static const _questions = const [
    {
      'questionText': 'Question number 1',
      'options': ['Option 1', 'Option 2', 'Option 3', 'Option 4'],
      'answer': 'Option 2',
    },
    {
      'questionText': 'Question number 2',
      'options': ['Option 1', 'Option 2', 'Option 3', 'Option 4'],
      'answer': 'Option 1',
    },
    {
      'questionText': 'Question number 3',
      'options': ['Option 1', 'Option 2', 'Option 3', 'Option 4'],
      'answer': 'Option 4',
    },
    {
      'questionText': 'Question number 4',
      'options': ['Option 1', 'Option 2', 'Option 3', 'Option 4'],
      'answer': 'Option 2',
    },
  ];
  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Hello"),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions)
            : Result(),
      ),
    );
  }
}
