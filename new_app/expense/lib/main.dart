import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

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
      title: "New shoes",
      amount:1700,
      date: DateTime.now(),
      
      ),
       Transaction(
      id: 't2',
      title: "New laptop",
      amount:1700,
      date: DateTime.now(),
      
      ),
      
       Transaction(
      id: 't3',
      title: "New lap",
      amount:1700,
      date: DateTime.now(),
      
      ),
      
       Transaction(
      id: 't3',
      title: "New lap",
      amount:1700,
      date: DateTime.now(),
      
      ),
       Transaction(
      id: 't3',
      title: "New lap",
      amount:1700,
      date: DateTime.now(),
      
      ),
       Transaction(
      id: 't3',
      title: "New lap",
      amount:1700,
      date: DateTime.now(),
      
      ),
    ]; // variable transaction will create list of transaction

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text('expense tracker'),
      ),

      body:Column(
       // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        


        Card(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              
              Container(
                  
                  padding: EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 3,
                  ),
                  child:TextField(
                    decoration: InputDecoration(
                      labelText: "Title",

                    ),
                  ),
              ),
              Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 3,
                  ),
                   child:TextField(
                    decoration: InputDecoration(
                      labelText: "Amount",

                    ),
              ),
          
               ),
               FlatButton(
                 onPressed: null, 
                child:Text("Add transaction",style: TextStyle(
                  color: Colors.deepOrangeAccent                ),
                
               
               )
               )
           ],
          ),
        ),
        Card(
          child: Column(
            mainAxisAlignment:MainAxisAlignment.spaceBetween ,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: transaction.map((tx) {
              return Row(
                
                children: <Widget>[
                  Container(
                    
                    child:Text('\$${tx.amount}',
                    style: TextStyle(
                      fontSize: 23,
                      color: Colors.purpleAccent,
                      fontWeight: FontWeight.bold,
                    
                    ),),
                    
                  decoration: BoxDecoration(
                    border: Border.all(
                      color:Colors.purple,
                      
                    ),
                  ),

                  margin:EdgeInsets.all(10),
                  padding: EdgeInsets.symmetric(
                    horizontal:10,
                  vertical: 3),
                  ),

                  Column(
                  
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                    
                    Container(
                      child:Text(tx.title,style: TextStyle(
                        fontSize: 16,
                        fontWeight:FontWeight.bold,

                      ),),

                      ),
                    Container(
                      child:Text(DateFormat('yyyy-mm-dd').format(tx.date),
                      style:TextStyle(
                        color:Colors.blueGrey
                      ))

                    )
                    ],

                  )
                ],
              );
                  
            }).toList(),
          ),
        )
      ],)

    );
    
  }
}