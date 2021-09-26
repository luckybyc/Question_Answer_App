import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback selectHandler;
  // ignore: non_constant_identifier_names
  final String AnswerQuestion;
  const Answer(this.selectHandler, this.AnswerQuestion, {Key? key})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        child: Text(AnswerQuestion),
        onPressed: selectHandler,
      ),
    );
  }
}
