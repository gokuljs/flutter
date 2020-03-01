import 'package:flutter/material.dart';

void main()=> runApp(Myapp());

class Myapp extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'flutter app',
      home: Myhomepage(),
    );
  }
}


class Myhomepage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
          appBar: AppBar(
            title: Text('expense tracker'),
          ),
          body:Column(
            children: <Widget>[
                Card(
                  child:Container(
                  width:double.infinity,// means take as much as width u can get 
                  child: Text('chart'),
                  color: Colors.blue,

                ),
                elevation: 6,

                ),
                Card(
                  child:Text('list of transcations'),
                )
            ],
          ),
    );
  }
}