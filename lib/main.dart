import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  var questionIndex = 0;

  void answerQuestion() {
      questionIndex = questionIndex + 1;
      print(questionIndex);
    }

  @override
  Widget build(BuildContext context) {    
    var questions = [
      'What\'s your favorite color?',
      'What\'s your favorite animal?',
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Mi primera aplicación'),
        ),
        body: Column(
          children: [
            Text(questions[questionIndex]),
            RaisedButton(
              child: Text('Answer 1'), 
              onPressed: answerQuestion,
            ),
            RaisedButton(
              child: Text('Answer 2'),
              onPressed: () => print('Answer 2'),
              ),
            RaisedButton(
              child: Text('Answer 3 lol'), 
              onPressed: answerQuestion,
              ),
          ],
        ),
      ),
    );
  }
}