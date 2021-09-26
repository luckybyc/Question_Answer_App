import 'package:flutter/material.dart';
import 'package:flutter_day_one_app/result.dart';
import 'quiz.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questiontext': 'Jina lako unaitwa nani?',
      'answers': ['James', 'IKanga', 'Hamida'],
    },
    {
      'questiontext': 'Unatokea mkoa ghani?',
      'answers': ['Mbeya', 'Iringa', 'Morogoro'],
    },
    {
      'questiontext': 'Wewe  ni kabila ghani?',
      'answers': ['Mdigo', 'Mbena', 'Mkinga'],
    },
    {
      'questiontext': 'Umri wako ni miaka mingapi?',
      'answers': [12, 16, 30],
    },
  ];
  var _questionIndex = 0;
  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('QUIZ App'),
        ),
        body: (_questionIndex < _questions.length)
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : Result(),
      ),
    );
  }
}
