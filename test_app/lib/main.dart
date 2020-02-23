import 'dart:async';

import 'package:flutter/material.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {

  void answerquetion(){
    print('answer');
  }
  @override
  Widget build(BuildContext context) {
    var question = [
      'whats your favourite colour',
      'whats your favourite animal',
      'whats your favourite car'
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('app1'),
        ), 
        body: Column(
          children: [
            Text(question[0]),
            RaisedButton(
                          color: Colors.orange,
                          child: Text('answer1'), 
                          onPressed:answerquetion ),
            RaisedButton(
                          color: Colors.orange,
                        child: Text('answer2'), 
                          onPressed: answerquetion,),
            RaisedButton(
                          color: Colors.orange,
                            child: Text('answer3'),
                           onPressed:answerquetion),
            RaisedButton( 
                          color: Colors.orange,
                          child: Text('answer4'),
                           onPressed: answerquetion,
            )
          ],
        ),
      ),
    );
  }
}
