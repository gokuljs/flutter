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

  void answerquestion() {
    print('question answered');
  }

  Widget build(BuildContext context) {
    var questions = [
      'what\'s your favourite color',
      'what\'your favourite animal',
      'whats your favourite car',
      'whats your favourite game'
    ];
    // when ever u run the code the program calls the build method first and tries to put that on the screen
    // it should always return widget thats why ur using widget build
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("quiz app"),
          backgroundColor: Colors.black,
        ),
        body: Column(
          children: [
            Text(
              questions[0],
              style: TextStyle(
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.bold,
              ),
            ),
            RaisedButton(
              child: Text(
                'answer 1',
                style: TextStyle(
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFFB74093)),
              ),
              colorBrightness: Brightness.dark,
              onPressed: answerquestion,
            ),
            RaisedButton(
              child: Text(
                'answer 2',
                style: TextStyle(
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFFB74093)),
              ),
              colorBrightness: Brightness.dark,
              onPressed: answerquestion,
            ),
            RaisedButton(
              child: Text(
                'answer 3',
                style: TextStyle(
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFFB74093)),
              ),
              colorBrightness: Brightness.dark,
              onPressed: answerquestion,
            ),
            RaisedButton(
              child: Text(
                'answer 4',
                style: TextStyle(
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFFB74093)),
              ),
              colorBrightness: Brightness.dark,
              onPressed: answerquestion,
            ),
            RaisedButton(
              child: Text(
                'answer 5',
                style: TextStyle(
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFFB74093)),
              ),
              colorBrightness: Brightness.dark,
              onPressed: answerquestion,
            ),
          ],
        ), // column widget are the invisible widgets which are used for styling
        backgroundColor: Colors
            .orange, // inside column widget there is childreen widget that can take list of widgets
      ),
    ); // home is the one widgets in the flutter which shows the complete whitescreen
  } // scaffold is one of the dependency present in the material dart package which prints out basic
  //page design

}
