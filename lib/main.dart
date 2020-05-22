import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  var questions = [
    'What\'s your favorite color?',
    'What\'s your favorite animal?'
  ];
 //Test commit2
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Quiz app'),
        ),
        body: Column(
          children: <Widget>[
            Text('The questions'),
            RaisedButton(
              onPressed: (){},
              child: Text('Answer 1'),
            ),
            RaisedButton(
              onPressed: (){},
              child: Text('Answer 2'),
            ),
            RaisedButton(
              onPressed: (){},
              child: Text('Answer 3'),
            ),
          ],
        ),
      ),
    );
  }
}
