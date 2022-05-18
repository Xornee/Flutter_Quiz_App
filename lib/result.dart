import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;

  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    String resultText = 'You did it!';
    if (resultScore <= 8) {
      resultText = 'Great job!';
    } else if (resultScore <= 12) {
      resultText = 'Nice';
    } else if (resultScore <= 16) {
      resultText = 'Just OK';
    } else {
      resultText = 'Not good';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
          ),
          ElevatedButton(
            onPressed: resetHandler,
            child: Text('RestartQuiz'),
          ),
        ],
      ),
    );
  }
}
