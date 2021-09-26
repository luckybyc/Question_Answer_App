import 'package:flutter/material.dart';
import 'answer.dart';
import 'question.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final VoidCallback answerQuestion;
  final int questionIndex;
  const Quiz(
      {Key? key,
      required this.answerQuestion,
      required this.questionIndex,
      required this.questions})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
          questions[questionIndex]['questiontext'].toString(),
        ),
        ...(questions[questionIndex]['answers'] as List<String>).map((e) {
          return Answer(answerQuestion, e);
        }).toList()
      ],
    );
  }
}
