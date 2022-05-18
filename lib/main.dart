import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MyAppState();
}

final _questions = const [
  {
    'questionText': 'What\'s the best JS Framewor/Library',
    'answers': [
      {'text': 'Vue', 'score': 0},
      {'text': 'React', 'score': 3},
      {'text': 'Angular', 'score': 10},
    ]
  },
  {
    'questionText': 'What\'s the best IDE',
    'answers': [
      {'text': 'VS', 'score': 2},
      {'text': 'Webstorm', 'score': 0},
      {'text': 'Atom', 'score': 10},
    ]
  },
  {
    'questionText': 'Why lemons are awesome? :D',
    'answers': [
      {'text': 'Coz they are tasty', 'score': 3},
      {'text': 'Coz they are yellow', 'score': 5},
      {'text': 'Coz you can make lemonade!! :D', 'score': 5},
    ]
  },
];

class _MyAppState extends State<MyApp> {
  int _questionIndex = 0;
  int _totalScore = 0;

  void _answerQuestions(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex++;
    });
  }

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text("My First App"),
          ),
          body: _questionIndex < _questions.length
              ? Quiz(
                  answerQuestion: _answerQuestions,
                  questionIndex: _questionIndex,
                  questions: _questions,
                )
              : Result(_totalScore, _resetQuiz)),
    );
  }
}
