import 'package:flutter/material.dart';

void main() =>runApp (app1());

class app1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Scaffold(
      appBar: AppBar(
        title: Text(
          "revise app",
          style:
              TextStyle(color: Color(0xffFFFFFF), fontStyle: FontStyle.italic),
        ),
        backgroundColor: Colors.greenAccent,
      ),
    ),);
  }
}
