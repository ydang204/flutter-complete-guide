import 'package:flutter/material.dart';

import 'quiz.dart';
import 'result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  static const _questions = [
    {
      'question': 'What\'s your favorite color?',
      'answer': [
        {
          'text': 'Black',
          'score': 100,
        },
        {
          'text': 'Green',
          'score': 90,
        },
        {
          'text': 'White',
          'score': 70,
        }
      ],
    },
    {
      'question': 'What\'s your favorite animal?',
      'answer': [
        {
          'text': 'Rabbit',
          'score': 10,
        },
        {
          'text': 'Snack',
          'score': 100,
        },
        {
          'text': 'Elephant',
          'score': 50,
        },
        {
          'text': 'Lion',
          'score': 20,
        }
      ]
    },
    {
      'question': 'What\'s your favorite instructor?',
      'answer': [
        {
          'text': 'Max',
          'score': 100,
        },
        {
          'text': 'Max',
          'score': 100,
        },
        {
          'text': 'Max',
          'score': 100,
        },
        {
          'text': 'Max',
          'score': 100,
        }
      ]
    },
  ];

  var _questionIndex = 0;
  int _totalScore = 0;

  void _answerQuestion(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex += 1;
    });
  }

  void _restartQuiz() {
    setState(() {
      _questionIndex = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('My First App'),
      ),
      body: _questionIndex < _questions.length
          ? Quiz(
              questions: _questions,
              answerQuestion: _answerQuestion,
              questionIndex: _questionIndex,
            )
          : Result(_totalScore, _restartQuiz),
    ));
  }
}
