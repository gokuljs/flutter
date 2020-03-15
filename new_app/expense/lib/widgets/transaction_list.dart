import 'package:flutter/material.dart';
import '../models/transaction.dart';
import 'package:intl/intl.dart';

class Transactionlist extends StatefulWidget {
  Transactionlist({Key key}) : super(key: key);

  @override
  _TransactionlistState createState() => _TransactionlistState();
}

class _TransactionlistState extends State<Transactionlist> {
  @override

  final List<Transaction> _usertransaction=[
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
  ];


  
  Widget build(BuildContext context) {
    return  Card(
          child: Column(
            mainAxisAlignment:MainAxisAlignment.spaceBetween ,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: _usertransaction.map((tx) {
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
        );
      
  }
}