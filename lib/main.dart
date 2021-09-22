import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var questionIndex = 0;
  void answerQuestion() {
    setState(() {
      questionIndex = questionIndex + 1;
    });

    print(questionIndex);
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
              Text(
                questions[questionIndex],
              ),
              ElevatedButton(
                child: Text('Answer1'),
                onPressed: answerQuestion,
              ),
              ElevatedButton(
                child: Text('Answer2'),
                onPressed: answerQuestion,
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
