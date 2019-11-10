import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;

  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    String resultText;
    if(resultScore <= 4){
      resultText = 'You do not know anything about me!';
    } else if(resultScore <=8) {
      resultText = 'You do not know me that well!';
    } else if(resultScore <= 10){
      resultText = 'You are quite accurate!';
    } else {
      resultText = 'You know quite a bit, excellent score!';
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
            style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          FlatButton(
            child: Text(
              'Restart quiz!'
            ),
            textColor: Colors.blue,
            onPressed: resetHandler,
          )
        ],
      )    
    );
  }
}