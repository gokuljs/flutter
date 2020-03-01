import 'package:flutter/material.dart';

void main()=> runApp(Myapp());

class Myapp extends StatelessWidget {
  const Myapp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'flutter app',
      home: Myhomepage(),
    );
  }
}


class Myhomepage extends StatelessWidget {
  const Myhomepage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
          appBar: AppBar(
            title: Text('expense tracker'),
          ),
          body: Center(
            child:Text('widget playground'),
          ),
    );
  }
}