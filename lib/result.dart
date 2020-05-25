import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandeler;

  Result(this.resultScore, this.resetHandeler);

  String get resultPhrase {
    String resultText;
    if (resultScore <= 3) {
      resultText = 'Loooooooooooow !!';
    } else if (resultScore <= 6) {
      resultText = 'Mediammmmmmmmmmm';
    } else if (resultScore <= 9) {
      resultText = 'Gooooooooooooooooooooooood';
    } else {
      resultText = 'Veryyyyyyyyyyyyyyyy good';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            resultPhrase,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          FlatButton(
            onPressed: resetHandeler,
            child: Text('Restart Quiz!'),
            textColor: Colors.blue,
          )
        ],
      ),
    );
  }
}
