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
    ]; // variable transaction will create list of transaction

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text('expense tracker'),
      ),

      body:Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        
        Container(
          width: double.infinity,
          color: Colors.blueAccent,
        
            child:Text('chart part'),
          
        ),
        Card(
          child: Column(
            mainAxisAlignment:MainAxisAlignment.start ,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: transaction.map((tx) {
              return Row(
                children: <Widget>[
                  Container(
                    child:Text(tx.amount.toString(),
                    style: TextStyle(
                      fontSize: 23,
                      color: Colors.purpleAccent,
                      fontStyle: FontStyle.italic,
                    
                    ),),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color:Colors.purple,
                      
                    ),
                  ),

                  margin:EdgeInsets.all(10),
                  padding: EdgeInsets.all(6),
                  ),

                  Column(
                  
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                    
                    Container(
                      child:Text(tx.title,style: TextStyle(
                        fontSize: 15,
                        fontWeight:FontWeight.bold,

                      ),),

                      ),
                    Container(
                      child:Text(tx.date.toString(),
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