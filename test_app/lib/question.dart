import 'package:flutter/material.dart';

class question extends StatelessWidget {
 final String questiontext;
  question(this.questiontext);

  @override
  Widget build(BuildContext context) {
    return Container(
            width:double.infinity,
            margin:EdgeInsets.all(3),
            child:Text(
            questiontext,
            style: TextStyle(color: Colors.green,fontSize: 30),
            textAlign: TextAlign.center,),);
  }
}