import 'package:flutter/material.dart'; // package in which  is used to import flutter dependency
// for example basic widgets like staefull widgets and stateless widget

//void main (){ // any program starts from main function
//runApp(Myapp());//runapp is the function given by the flutter two run the main widget
//}

void main() => runApp(Myapp()); // other way of writing the above code
// this can be used only if u have one app

class Myapp extends StatefulWidget {



}
  //on purpose we overriding the program again and again
  // statelesswidget program slredy have a @override

class MyappState extends State<Myapp> {  // contents inside this class wont change 
// State<Myapp> means tells us that this state belongs to Myapp state 
// they are persistent 
//only contents inside statefull widget changes 


  var index=0;
  void answerquestion() {
    index=index+1;
    print(index);
    print('question answered');
  }
  @override 

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
        appBar: AppBar( // the widget which is present at the top of the app 
          title: Text("quiz app"),// passing text widget 
          backgroundColor: Colors.black, // passing background color for the app
        ),
        body: Column(  //column is an invisible widget present in the flutter that is used for arranging widget in column wise 
          children: [ // it has childreen widget to add multiple widgets 
            Text(
              questions[index],
              style: TextStyle(// style widget is used to change the style of the text widget 
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.bold,
              ),
            ),
            RaisedButton(  //raised button is one of the action button given by the flutter 
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
