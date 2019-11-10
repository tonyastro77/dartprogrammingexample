import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
      {
       'questionText': 'What\'s my favorite cartoon?',
       'answers': [ {'text':'Dragon Ball Z', 'score': 1}, {'text':'Hey Arnold', 'score':0}, {'text':'Pokemon','score': 0}, {'text':'Kitaro','score':0}],
      },
      {
       'questionText': 'Who was my first pet?',
       'answers': [{'text':'Pepito', 'score': 0}, {'text':'Mitzy', 'score':0}, {'text':'Toíto','score': 0}, {'text':'Chopito','score':1}]
      },
      {
       'questionText': 'Where was my mum born?',
       'answers': [{'text':'Coyhaique', 'score': 0}, {'text':'San Carlos', 'score':1}, {'text':'Cauquenes','score': 0}, {'text':'Chillán','score':0}]
      },
      {
       'questionText': 'Where did I live when I was 4 years old till I turned 13?',
       'answers': [{'text':'Puente Alto', 'score': 0}, {'text':'Peñalolén', 'score':1}, {'text':'San Joaquín','score': 0}, {'text':'Ñuñoa','score':0}]
      },
      {
       'questionText': 'Which was my primary school?',
       'answers': [{'text':'Helena Rojas', 'score': 0}, {'text':'Liceo Santa María', 'score':0}, {'text':'Camilo Ortuzar Montt','score': 1}, {'text':'Liceo A24','score':0}]
      },
      {
       'questionText': 'What type of alcoholic drink would I prefer?',
       'answers': [{'text':'Rum with cola', 'score': 0}, {'text':'Lonkero', 'score':0}, {'text':'Beer','score': 1}, {'text':'Red Wine','score':1}]
      },
      {
       'questionText': 'Which game made me wanna get a Super Nintendo when I was little?',
       'answers': [{'text':'Super Mario World', 'score': 0}, {'text':'Super Mario Kart', 'score':0}, {'text':'Mega man X','score': 0}, {'text':'Donkey Kong','score':1}]
      },
      {
       'questionText': 'Which topic can I handle best?',
       'answers': [{'text':'English as a foreign language', 'score': 1}, {'text':'Computer Programming', 'score':0}, {'text':'Physics','score': 0}, {'text':'Mathematics','score':0}]
      },
      {
       'questionText': 'Why did I want to travel when I was 12 years old to England?',
       'answers': [{'text':'to learn English', 'score': 0}, {'text':'to feel independent', 'score':0}, {'text':'to meet a girlfriend','score': 1}, {'text':'to watch football','score':0}]
      },
      {
       'questionText': 'Which was my favorite Disney Film when I was little?',
       'answers': [{'text':'Lion King', 'score': 0}, {'text':'Snow White', 'score':1}, {'text':'Aladdin','score': 1}, {'text':'The Little Mermaid','score':0}]
      },
      {
       'questionText': 'Where did I go on a holiday every summer when I was little?',
       'answers': [{'text':'Cauquenes', 'score': 1}, {'text':'Santo Domingo', 'score':0}, {'text':'La Serena','score': 0}, {'text':'Valle del Elqui','score':0}]
      },
      {
       'questionText': 'Who was my first friend since I have a memory?',
       'answers': [{'text':'Daniel', 'score': 1}, {'text':'Lucho', 'score':0}, {'text':'Lucas','score': 0}, {'text':'Ignacio','score':0}]
      },
      {
       'questionText': 'Which girl made me feel depressed?',
       'answers': [{'text':'Jade', 'score': 1}, {'text':'Zoe', 'score':1}, {'text':'Marilyn','score': 1}, {'text':'Fernanda','score':1}]
      },
      {
       'questionText': 'LOL',
       'answers': [{'text':'Continue to see results', 'score': 0}, {'text':'Continue to see results', 'score':0}, {'text':'Continue to see results','score': 0}, {'text':'Continue to see results','score':0}]
      },
    ];

  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    setState((){
    _questionIndex = 0;
    _totalScore = 0;
    }); 
  }

  void _answerQuestion(int score) {
    
    _totalScore += score;

    setState(() {
      _questionIndex = _questionIndex + 1;
    });     
    print(_questionIndex);
      
    if (_questionIndex < _questions.length) {
      print('We have more questions!');
    }
    else {
      print("No more questions!");
    }
  }
    

  @override
  Widget build(BuildContext context) {    
    

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('How much do you know me?'),
        ),
        body: _questionIndex < _questions.length
        ? Quiz(
          answerQuestion: _answerQuestion, 
          questionIndex: _questionIndex, 
          questions: _questions,
          )
        : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}