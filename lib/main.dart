import 'package:flutter/material.dart';
import 'package:practice1/quiz.dart';

import './result.dart';

void main() {
  runApp(_MyApp());
}

class _MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<_MyApp> {
  var _questionIndex = 0;
  var score=0;
  final questions = const [
    {
      'questionText': 'prefered programming language ?',
      'answers': [{'text' :'C','score' : 10}, {'text' :'Java','score' : 15}, {'text' :'Javascript','score' : 20}, {'text' :'python','score' : 25}]
    },
    {
      'questionText': 'most visited city in the world ?',
      'answers': [{'text' :'Istanbul','score' : 10}, {'text' :'Paris','score' : 15}, {'text' :'Rome','score' : 20}, {'text' :'Newyork','score' : 25}]
    },
    {
      'questionText': 'prefered spoken language ?',
      'answers': [{'text' :'french','score' : 10}, {'text' :'arabic','score' : 15}, {'text' :'english','score' : 20}, {'text' :'Spanish','score' : 25}]
    },
  ];

  void _answerQuestion(int score) {
    this.score += score;
    if (_questionIndex < questions.length) {
      print('have more questions');
    } else {
      print('no more questions');
    }
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Quiz app'),
        ),
        body: _questionIndex < questions.length
            ? Quiz(
                answerQuestion: this._answerQuestion,
                questionIndex: this._questionIndex,
                questionList: this.questions,
              )
            : Result(score),
      ),
    );
  }
}
