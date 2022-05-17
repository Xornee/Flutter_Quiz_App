import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MyAppState();
}

final questions = const [
  {
    'questionText': 'What\'s the best JS Framewor/Library',
    'answers': ['Vue', 'React', 'Angular']
  },
  {
    'questionText': 'What\'s the best IDE',
    'answers': ['VSC', 'WebStorm', 'Atom']
  },
  {
    'questionText': 'Why lemons are awesome? :D',
    'answers': [
      'Coz they are tasty',
      'Coz they are yellow',
      'Coz you can make lemonade :D'
    ]
  },
];

class _MyAppState extends State<MyApp> {
  int _questionIndex = 0;

  void _answerQuestions() {
    setState(() {
      _questionIndex++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text("My First App"),
          ),
          body: _questionIndex < questions.length
              ? Column(
                  children: [
                    Question(
                      questions[_questionIndex]['questionText'] as String,
                    ),
                    ...(questions[_questionIndex]['answers'] as List<String>)
                        .map((answer) {
                      return Answer(_answerQuestions, answer);
                    }).toList()
                  ],
                )
              : Center(child: Text('Nice :D'))),
    );
  }
}
