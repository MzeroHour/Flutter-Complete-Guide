import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final selectHandler;

  Answer(this.selectHandler);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: Colors.blue,
          textStyle: TextStyle(
            fontSize: 16,
            color: Colors.white,
          ),
        ),
        child: Text('Answer 1'),
        onPressed: selectHandler,
      ),
    );
  }
}
