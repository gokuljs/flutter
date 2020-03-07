import 'package:flutter/material.dart';


class name extends StatelessWidget {
  const name({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'expense tracker',
      home:myhomepage(),
    );
  }
}


class myhomepage extends StatelessWidget {
  const myhomepage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text('expense tracker')
      ),

    
    );
  }
}