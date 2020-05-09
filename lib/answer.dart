import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function answerHandler;
  final String answerText;

  Answer(this.answerHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      child: Text(answerText),
      onPressed: answerHandler,
      color: Colors.blueAccent,
      textColor: Colors.white,
      hoverColor: Color(100),
      elevation: 10,
    );
  }
}
