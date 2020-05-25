import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selecHandeler;
  final String answerText;

  Answer(this.selecHandeler , this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Container(
        margin: EdgeInsets.only(left: 18, right: 18),
        child: RaisedButton(
          color: Colors.blue,
          elevation: 8,
          textColor: Colors.white,
          onPressed: selecHandeler,
          child: Text(
            answerText,
            style: TextStyle(fontSize: 18),
          ),
        ),
      ),
    );
  }
}
