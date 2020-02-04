import 'package:flutter/material.dart';
import './done.dart';
import './quiz.dart'; 
void main()=>runApp(MyApp());
class MyApp extends StatefulWidget
{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
} 
class _MyAppState extends State<MyApp>{ 
  var _questions=[
      {
         'questionText':'Whats your favorite movie?',
         'answers':[{'text':'Dabangg','score':10},{'text':'Sultan','score':8},{'text':'Prem Ratan Dhan Paayo','score':7}]
      },
      {
        'questionText':'Whats your favorite TV show',
        'answers':[{'text':'Sherlock','score':10},{'text':'You','score':7},{'text':'Game of Thrones','score':9}]
      },
      {
        'questionText':'Whats your favorite programming language',
        'answers':[{'text':'C','score':8},{'text':'Java','score':9},{'text':'Javascripts','score':10}],
      }
    ];
  var _totalScore=0;
  var _questionindex=0; 
  void _selectOption(int score)
    {
     setState(() {
      _questionindex=_questionindex+1; 
      _totalScore+=score;
     });
    }
  void _restartQuiz()
  {
    setState(() {
     _questionindex=0;
     _totalScore=0; 
    });
  }
  @override
 Widget build(BuildContext context)
  { 
    return MaterialApp(home: Scaffold(
      appBar: AppBar(title: Text("Welcome to the quiz")),
      body: _questionindex < _questions.length ? Quiz(
        answerQuestion:_selectOption,
        questions:_questions,
        questionIndex:_questionindex) 
        : Done(_totalScore,_restartQuiz)
    )
    );
  }
}