import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final Function answerQuestion;

  Quiz({@required this.questions, @required this.answerQuestion, @required this.questionIndex});

  @override
  Widget build(BuildContext context){
    return Column(
          children: [
            Question( //we import it from question.dart instead of using Text
              questions[questionIndex]['questionText'],
            ),
            ...(questions[questionIndex]['answers'] as List<Map<String, Object>>).map((answer) { //we tell dart that answer is a list and ... spread operator to add values or a list to a list and not a list to a list
              return Answer(() => answerQuestion(answer['score']), answer['text']);
            }).toList()   //converting the value iterable that map gives us to a list
          ],
        );
  }
}