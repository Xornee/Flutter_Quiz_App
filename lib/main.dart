import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }
void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
  int questionIndex = 0;

  void answerQuestions() {
    setState(() {
      questionIndex++;
    });
    print(questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'What\'s the best language',
      'What\'s the best IDE',
      'Why lemons are awesome? :D'
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("My First App"),
        ),
        body: Column(
          children: [
            Text(
              questions[questionIndex],
            ),
            ElevatedButton(
              onPressed: answerQuestions,
              child: Text('React'),
            ),
            ElevatedButton(
              onPressed: () {
                print('answer Choosen');
              },
              child: Text('Vue'),
            ),
            ElevatedButton(
              onPressed: () => print('answer Choosen'),
              child: Text('Angular'),
            ),
          ],
        ),
      ),
    );
  }
}
