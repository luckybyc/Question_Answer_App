import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });

    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
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

    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: Text('QUIZ App'),
          ),
          body: Column(
            children: [
              Question(
                questions[_questionIndex]['questiontext'].toString(),
              ),
              ...(questions[_questionIndex]['answers'] as List<String>)
                  .map((e) {
                return Answer(_answerQuestion, e);
              }).toList()
            ],
          )),
    );
  }
}
