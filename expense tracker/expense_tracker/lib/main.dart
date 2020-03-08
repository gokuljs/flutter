import 'transaction.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(myapp());
}

class myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'expense tracker',
      home:myhomepage(),
    );
  }
}


class myhomepage extends StatelessWidget {
  final List<Transaction> transaction =[  // ur creating a list of transactions datetimenow built  in funtion in dart 
    Transaction(id: 't1', amount: 10000, date: DateTime.now(), title: 'New shoes'),
    Transaction(id: 't2', amount: 10000, date: DateTime.now(), title: 'News'),
    Transaction(id: 't3', amount: 10000, date: DateTime.now(), title: 'Tv'),
    Transaction(id: 't4', amount: 10000, date: DateTime.now(), title: 'Hello'),
    Transaction(id: 't5', amount: 10000, date: DateTime.now(), title: 'World'),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text('expense tracker')
      ),
      body: Column(
        
        
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
      

        Container(
          width: double.infinity,
          color: Colors.cyan,
          child: Card(child:Text('chart'),
          elevation: 6,
      
          ),
        ),
        Column(children: transaction.map((tx) { 
        // we are mapping everything to the list of transacton and returning a card widget based on the number of transaction present 
          
          return Card(
            child:Row(
              children: <Widget>[
              Container(
                margin: EdgeInsets.symmetric(
                  vertical: 10,
                  horizontal: 15,
                ),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey,width: 2,),
                ),
                padding: EdgeInsets.all(3),  // to give space inside margin 
                child: Text(tx.amount.toString(),
                  style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.blueGrey),
                
                  ),
                  // for getting  bolded text 
                
                
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
              
                Container(
                  margin: EdgeInsets.all(3),
                  child: Text(tx.title,
                  style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontSize: 14,
                  
                
                  ),
                  )
                  ),
                Container(
                  
                  margin: EdgeInsets.all(3),
                  padding: EdgeInsets.all(3),
                  child: Text(tx.date.toString(),
                  style: TextStyle(fontWeight: FontWeight.bold,
                  color: Colors.purpleAccent,
                  fontSize: 10,
                  fontStyle: FontStyle.italic
                  ),)),

              ],)
            ],),
            );
        }).toList(),),
          
      ],)

    
    );
  }
}