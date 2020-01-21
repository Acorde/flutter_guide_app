import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectHandlerListener;
  final String answerText;


  ///Setting a listener as a function to the onClick method()
  Answer(this.selectHandlerListener, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        color: Colors.blue[300],
        textColor: Colors.white,
        child: Text(answerText),
        onPressed: selectHandlerListener,
      ),
    );
  }
}
