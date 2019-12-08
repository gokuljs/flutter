import 'package:flutter/material.dart';// package in which  is used to import flutter dependency 
// for example basic widgets like staefull widgets and stateless widget 

void main (){ // any program starts from main function
runApp(Myapp());//runapp is the function given by the flutter two run the main widget 
}

class Myapp extends StatelessWidget{
  Widget build(BuildContext context) {// when ever u run the code the program calls the build method first and tries to put that on the screen 
    // it should always return widget thats why ur using widget build
    return MaterialApp(home :Text(" hello world")); // home is the one widgets in the flutter which shows the complete whitescreen
  } 

  }
