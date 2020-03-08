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


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text('expense tracker')
      ),
      body: Column(children: <Widget>[
        Container(
          width: double.infinity,
          color: Colors.cyan,
          child: Card(child:Text('chart'),
          elevation: 6,
      
          ),
        ),
        Card(child:Text('list of transactions'),)
      ],)

    
    );
  }
}