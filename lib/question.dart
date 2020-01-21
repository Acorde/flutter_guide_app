import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionText;

  //This set by the position argument
  Question(this.questionText);


  ///This set the value by name
  ///Question({this.questionText});

  ///Question(String str){questionText = str;}


  /// Extension to Constructor with function. In our case, because the $questionText is final, we also must pass it to every constructor
  /// Question.customConstructor(this.questionText, String someValue){}

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: Text(
        questionText,
        style: TextStyle(fontSize: 28),
        textAlign: TextAlign.center,
      ),
    );
  }
}
