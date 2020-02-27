import 'package:flutter/material.dart';


class answer extends StatelessWidget {

  final Function select;

  answer(this.select);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child:RaisedButton(color: Colors.blue,
                          textColor: Colors.black,
                          child: Text('answer1'), 
                          onPressed:select),
  
    );
  }
}
