import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final questions = const [
    ///The syntax below is a short way of Map()

    {
      "questionText": "What's your favorite color?",
      "answers": ["Black", "Red", "Green", "White"]
    },
    {
      "questionText": "What's your favorite animals?",
      "answers": ["Rabbit", "Snake", "Dog", "Cat"]
    },
    {
      "questionText": "Who's your favorite instructor",
      "answers": ["Danny", "Moshe", "Groot", "No one"]
    }
  ];

  var _questionIndex = 0;
  var title = "My First App";

  void _answerQuestion() {
    setState(() {
//      _questionIndex =
//          (_questionIndex <= 0) ? _questionIndex + 1 : _questionIndex - 1;

      if (_questionIndex <= questions.length) {
        _questionIndex = _questionIndex + 1;
      }
    });

    print("The questionIndex was changed and now is $_questionIndex");
  }

  void changeTitle() {
    setState(() => title = "New Title");
  }

  @override
  Widget build(BuildContext context) {
    print("The widget is been rebuild....");
    return _getMainScreen();
  }

  Widget _getMainScreen() {
    ///const vs final = The final is been instantiate on run once the const is Compile Run

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
            title: Text(
          title,
          textAlign: TextAlign.center,
        )),
        body: _questionIndex < questions.length ?  Column(
          children: [
            Question(
              questions[_questionIndex]["questionText"],
            ),
            ...(questions[_questionIndex]["answers"] as List<String>)
                .map((answer) {
              return Answer(_answerQuestion, answer);
            }).toList()
          ],
        ) : ,
      ),
    );
  }
}
