import 'package:flutter/material.dart';
class Answer extends StatelessWidget {
 final Function eventHandler;
 final String answerText;
 Answer(this.eventHandler,this.answerText);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        color: Colors.blueAccent,
        child: Text(answerText),
        onPressed: eventHandler,
        textColor: Colors.white,
      ),
    );
  }
}