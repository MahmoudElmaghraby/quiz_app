import 'package:flutter/material.dart';

import 'quiz.dart';
import 'result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questionText': 'What\'s your favorit color?',
      'answers': [
        {'text': 'Black', 'score': 1},
        {'text': 'Yallow', 'score': 2},
        {'text': 'Red', 'score': 3},
        {'text': 'Green', 'score': 4}
      ],
    },
    {
      'questionText': 'What\'s your favorit animal?',
      'answers': [
        {'text': 'Rabit', 'score': 1},
        {'text': 'Snake', 'score': 2},
        {'text': 'Elephant', 'score': 3},
        {'text': 'Lion', 'score': 4}
      ],
    },
    {
      'questionText': 'Who\'s your favorit learner?',
      'answers': [
        {'text': 'You', 'score': 1},
        {'text': 'You', 'score': 2},
        {'text': 'You', 'score': 3},
        {'text': 'You', 'score': 4}
      ],
    },
  ];

  void _resetQuiz(){
    setState(() {
      _totalScore = 0;
      _questionIndex = 0;
    });
  }

  var _questionIndex = 0;
  var _totalScore = 0;



  void _answerQuestion(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex += 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Quiz app'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : Result(_totalScore , _resetQuiz),
      ),
    );
  }
}
