import 'dart:async';

import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

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

    var questions = [{
      'questiontext':'whats ypur favouirte color',
      'answer':['balck','bluew','red','green']
    },
    {
      'questiontext':'whats ypur favouirte animal',
      'answer':['green','lion','amnmam','greeasmman']
    }
    ,{
      'questiontext':'whats ypur favouirte color',
      'answer':['baamsmalck','blamnsansuew','red asna,s','greea s,amsn']
    },
    {
      'questiontext':'whats ypur favouirte color',
      'answer':['baammlck','b ajbnxkananluew','rea s,a m,smad','greea,smamsn']
    },
    {
      'questiontext':'whats ypur favouirte color',
      'answer':['balck','bluew','red','green']
    }

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
            question(questions[questionindex]['questiontext']),
            answer(answerquetion), //we can also pass pointer to function in awidget 
            answer(answerquetion),
            answer(answerquetion),
            answer(answerquetion),

          ],
        ),
      ),
    );
  }
}
