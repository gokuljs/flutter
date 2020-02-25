import 'dart:async';

import 'package:flutter/material.dart';

import './question.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatefulWidget {
  @override
  _MyappState createState() => _MyappState();
}

// _ is important property i  flutter which makes things private 


class _MyappState extends State<Myapp> {
  var questionindex=0;

  void answerquetion(){
    setState(() {
           questionindex=questionindex+1;

    });

    print(questionindex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'whats your favourite colour',
      'whats your favourite animal',
      'whats your favourite car',
      'whats your favourite caaxapr',
      'whats your favourite caakmsmsr',
      'whats your favourite caamsamsmar',

    ];
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Colors.lightBlue,
        accentColor: Colors.cyan[600],
      ),
      home: Scaffold(

        appBar: AppBar(
          title: Text('app1'),
        ), 
        
        body: Column(
          children: [
            question(questions[questionindex]),
            RaisedButton(
                          color: Colors.redAccent,
                          child: Text('answer1'), 
                          onPressed:answerquetion),
            RaisedButton(
                          color: Colors.redAccent,
                        
                        child: Text('answer2'), 
                          onPressed: answerquetion,),
            RaisedButton(
                             color: Colors.redAccent,

                            child: Text('answer3'),
                           onPressed:answerquetion),
            RaisedButton( 
                          color: Colors.redAccent,
                          child: Text('answer4'),
                           onPressed: answerquetion,
            )
          ],
        ),
      ),
    );
  }
}
