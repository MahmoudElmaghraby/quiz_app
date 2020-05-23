import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  void _answerQuestion() {
    
    setState(() {
      _questionIndex += 1;
    });
    
  }

  @override
  var questions = [
    'What\'s your favorite color?',
    'What\'s your favorite animal?'
  ];

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Quiz app'),
        ),
        body: Column(
          children: <Widget>[
            Text(
              questions[_questionIndex],
            ),
            RaisedButton(
              onPressed: _answerQuestion,
              child: Text('Answer 1'),
            ),
            RaisedButton(
              onPressed: _answerQuestion,
              child: Text('Answer 2'),
            ),
            RaisedButton(
              onPressed: _answerQuestion,
              child: Text('Answer 3'),
            ),
          ],
        ),
      ),
    );
  }
}
