import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback selectHandler;
  final String AnswerQuestion;
  Answer(this.selectHandler, this.AnswerQuestion);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        child: Text(AnswerQuestion),
        onPressed: selectHandler,
      ),
    );
  }
}
