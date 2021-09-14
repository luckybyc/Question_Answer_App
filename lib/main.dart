import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('My first App'),
          ),
          body: Column(
            children: [
              Text('The question.!'),
              ElevatedButton(
                child: Text('Answer1'),
                onPressed: null,
              ),
              ElevatedButton(
                child: Text('Answer1'),
                onPressed: null,
              ),
              ElevatedButton(
                child: Text('Answer1'),
                onPressed: null,
              ),
            ],
          )),
    );
  }
}
