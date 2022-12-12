import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandlar;

  Result(this.resultScore, this.resetHandlar);

  String get resultPhase {
    String resultText;
    if (resultScore <= 8) {
      resultText = 'You are awesome and inncent!';
    } else if (resultScore <= 12) {
      resultText = 'Pretty likeable!';
    } else if (resultScore <= 16) {
      resultText = 'You are ... Strange?';
    } else {
      resultText = 'You are so bad:';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultPhase,
            style: TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          TextButton(
            child: Text('Restart Quiz'),
            onPressed: () {
              resetHandlar();
            },
          )
        ],
      ),
    );
  }
}
