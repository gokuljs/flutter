import 'package:flutter/material.dart'; // package in which  is used to import flutter dependency
// for example basic widgets like staefull widgets and stateless widget

//void main (){ // any program starts from main function
//runApp(Myapp());//runapp is the function given by the flutter two run the main widget
//}

void main() => runApp(Myapp()); // other way of writing the above code
// this can be used only if u have one app

class Myapp extends StatelessWidget {
  @override //on purpose we overriding the program again and again
  // statelesswidget program slredy have a @override
  Widget build(BuildContext context) {
    // when ever u run the code the program calls the build method first and tries to put that on the screen
    // it should always return widget thats why ur using widget build
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("quiz app"),
          backgroundColor: Colors.black,
        ),
        body: Text("my quiz app"),
        backgroundColor: Colors.orange,
        
      ),
    ); // home is the one widgets in the flutter which shows the complete whitescreen
  } // scaffold is one of the dependency present in the material dart package which prints out basic
  //page design

}
