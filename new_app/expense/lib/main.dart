import 'package:flutter/material.dart';
import './transaction.dart';

void main()=>runApp(Myapp());
class Myapp extends StatelessWidget {
  const Myapp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "expense tracker",
      home: Myhomepage(),
    );
  }
}


class Myhomepage extends StatelessWidget {
    final List<Transaction> transaction=[
      Transaction(
      id: 't1',
      title: "new shoes",
      amount:1700,
      date: DateTime.now(),
      
      )
    ]; // variable transaction will create list of transaction

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text('expense tracker'),
      ),

      body:Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        
        Container(
          width: double.infinity,
          color: Colors.blueAccent,
        
            child:Text('chart part'),
          
        ),
        Card(
          child: Column(
            children: transaction.map((tx) {
              return Card(
                child: Text(tx.title),
                
              );
            }).toList(),
          ),
        )
      ],)

    );
    
  }
}