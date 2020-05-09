import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  Result(this.resultScore);
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('you did it! ' + this.resultScore.toString()),
    );
  }
}
