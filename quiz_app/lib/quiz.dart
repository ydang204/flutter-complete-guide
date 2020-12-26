import 'package:flutter/material.dart';

import 'answer.dart';
import 'question.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final Function answerQuestion;
  final int questionIndex;

  Quiz(
      {@required this.questions,
      @required this.answerQuestion,
      @required this.questionIndex});

  @override
  Widget build(BuildContext context) {
    var question = questions[questionIndex];
    return Container(
      child: Column(
        children: [
          Question(question['question']),
          ...(question['answer'] as List<Map<String, Object>>)
              .map((answer) =>
                  Answer(() => answerQuestion(answer['score']), answer))
              .toList()
        ],
      ),
    );
  }
}
