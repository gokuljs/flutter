import 'package:flutter/material.dart';

import 'transcation.dart';
import 'transcation.dart';

void main()=> runApp(Myapp());

class Myapp extends StatelessWidget {
  

  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'flutter app',
      home: Myhomepage(),
    );
  }
}


class Myhomepage extends StatelessWidget {

  final List<Transaction> transactions=[
    Transaction(
      id:'t1',
      title: 'new shoes',
      amount: 69.99,
      date: DateTime.now()

    ),
    Transaction(
      id:'t2',
      title: 'new shoes',
      amount: 69.99,
      date: DateTime.now()

    ),Transaction(
      id:'t3',
      title: 'new shoes',
      amount: 69.99,
      date: DateTime.now()

    )
  ];  // it is list of transaction with an empty list 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
          appBar: AppBar(
            title: Text('expense tracker'),
          ),
          body:Column(  // used to add widgets one below the other (vertically)
          // where row adds multiple widgets horizontally
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.stretch,
          // main access and cross acces are the two major alignments which tells us how  the widget should be presitioned
         children: transactions.map((tx) {
           return Card(child:Text(tx.title)
           );
         }).toList(),
          ),
    );
  }
}