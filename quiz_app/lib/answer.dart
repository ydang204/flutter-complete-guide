import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function answerQuestion;
  final Map<String, Object> answer;
  const Answer(this.answerQuestion, this.answer);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        child: Text(answer['text']),
        color: Colors.blue,
        textColor: Colors.white,
        onPressed: answerQuestion,
      ),
    );
  }
}
