// this app is used for finding diffrent names for startup
import 'package:english_words/english_words.dart' as prefix0;
import 'package:flutter/material.dart';  //imports flutter packages 
import 'package:english_words/english_words.dart'; // importing english words package 

//pubspec file is the one which allows to add new dependencies for the flutter
//pubspec.loc will be having list of all packages  

void main() => runApp(Myapp()); // whole flutter is dependent on this which helps in building the app

class Myapp extends StatelessWidget {  //stateles non-interactive widget
  @override
      
  Widget build(BuildContext context) { //build the context

    return MaterialApp(
      title: ('welcome to flutter'),  
      home: Scaffold(
        appBar: AppBar(
          title: Text('welcome to flutter'),
        ),
        body: Center(
        child: RandomWords(),//“Pascal case” (also known as “upper camel case”), means that each word in the string, including the first one, begins with an uppercase letter. So, “uppercamelcase” becomes “UpperCamelCase”.
        ),                               //basic wat his does is gokul means output will like Gokul
      ),
    );
  }
}

/*
Stateful widgets maintain state that might change during the lifetime of the widget. 
Implementing a stateful widget requires at least two classes:
 1) a StatefulWidget class that creates an instance of 
2) a State class. The StatefulWidget class is, itself, immutable,
 but the State class persists over the lifetime of the widget.

*/
class RandomWordsState extends State<RandomWords> {
  // TODO Add build() method
    @override
  final _suggestions = <WordPair>[];
  final _biggerFont = const TextStyle(fontSize: 18.0);
  // ···
}
  Widget build(BuildContext context) {
    final wordPair = WordPair.random();
    return Text(wordPair.asPascalCase);
  }
}



class RandomWords extends StatefulWidget {
  @override
  RandomWordsState createState() => RandomWordsState();
}