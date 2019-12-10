// this app is used for finding diffrent names for startup
import 'package:english_words/english_words.dart' as prefix0;
import 'package:flutter/material.dart'; //imports flutter packages
import 'package:english_words/english_words.dart'; // importing english words package

//pubspec file is the one which allows to add new dependencies for the flutter
//pubspec.loc will be having list of all packages

void main() => runApp(
    Myapp()); // whole flutter is dependent on this which helps in building the app

class Myapp extends StatelessWidget {
  //stateles non-interactive widget
  @override
  Widget build(BuildContext context) {
    //build the context

    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('startup_namer',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.italic,
              fontFamily: 'Open Sans',
            )),
        backgroundColor: Color(0XFF42539E),
      ),
      body: RandomWords(),
      backgroundColor: Color(0XFF42539E),
    )); //“Pascal case” (also known as “upper camel case”), means that each word in the string, including the first one, begins with an uppercase letter. So, “uppercamelcase” becomes “UpperCamelCase”.
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
  //ListView widget, grows infinitely. ListView’s builder factory constructor allows you to build a list view lazily
  /*
The ListView class provides a builder property, itemBuilder,
 that’s a factory builder and callback function specified as an anonymous function. 
 Two parameters are passed to the function—the BuildContext, and the row iterator, 
 i. The iterator begins at 0 and increments each time the function is called. 
 It increments twice for every suggested word pairing: once for the ListTile,
  and once for the Divider. This model allows the suggested list to grow infinitely as the user scrolls.



  */
  Widget _buildSuggestions() {
    return ListView.builder(
        padding: const EdgeInsets.all(16.0),
        itemBuilder: /*1*/ (context, i) {
          if (i.isOdd) return Divider(); /*2*/

          final index = i ~/ 2; /*3*/
          if (index >= _suggestions.length) {
            _suggestions.addAll(generateWordPairs().take(10)); /*4*/
          }
          return _buildRow(_suggestions[index]);
        });
  }

  Widget _buildRow(WordPair pair) {
    return ListTile(
      title: Text(
        pair.asPascalCase,
        style: TextStyle(
              color: Color(0XFF341037),
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.italic,
              fontFamily: 'Open Sans',
            ),
        

      ),
    );
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildSuggestions(),
      backgroundColor: Color(0XFFC4BFFD),
    );
  }
}

class RandomWords extends StatefulWidget {
  @override
  RandomWordsState createState() => RandomWordsState();
}
