import 'package:flutter/material.dart';

import './answer.dart';
import './question.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questionList;
  final int questionIndex;
  final Function answerQuestion;

  Quiz({this.questionList, this.answerQuestion, this.questionIndex});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Question(questionList[questionIndex]['questionText']),
        ...(questionList[questionIndex]['answers'] as List<Map<String,Object>>)
            .map((answer) {
          return Answer(()=>this.answerQuestion(answer['score']), answer['text']);
        }).toList()
      ],
    );
  }
}
