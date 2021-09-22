import 'package:flutter/material.dart';
import 'question.dart';

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
    // TODO: implement build
    var questions = [
      'whats your favorite color?',
      'whats  your favorite animal',
    ];

    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('My first App'),
          ),
          body: Column(
            children: [
              Question(
                questions[_questionIndex],
              ),
              ElevatedButton(
                child: Text('Answer1'),
                onPressed: _answerQuestion,
              ),
              ElevatedButton(
                child: Text('Answer2'),
                onPressed: _answerQuestion,
              ),
              ElevatedButton(
                child: Text('Answer 3'),
                onPressed: () {
                  print('chosen question 3');
                },
              ),
            ],
          )),
    );
  }
}
