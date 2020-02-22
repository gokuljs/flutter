import 'package:flutter/material.dart';

void main()=> runApp(
  Myapp()
);

// first creating the statefull widget now
//
class Myapp extends StatefulWidget {
  


  @override
  _MyappState createState() => _MyappState();
}

class _MyappState extends State<Myapp> {
    String name,description;
  double price;
  
   getName(name){
     this.name=name;
     print(this.name);
    }

    getDescription(description){
      this.description=description;
      print(this.description);

    }
    getPrice(price){
      this.price=double.parse(price);  // we are giving price as string and converting it into double 
      print(this.price);
    }
    
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Colors.lightBlue,
        accentColor: Colors.cyan[600],
      ),
      home:Scaffold(
      appBar: AppBar(
        title:  Text("mysqlite")),
    body:Padding(padding: EdgeInsets.all(8.0),
    child: Column(
      children:<Widget>[
        TextField(decoration:InputDecoration(
            hintText: "Name",

        ),
        onChanged: (String name){
          getName(name);
        },
        ),
        TextField(decoration:InputDecoration(
            hintText: "Description",

        ),
        onChanged: (String description){
          getDescription(description);
        },
        ),
        
        TextField(decoration:InputDecoration(
            hintText: "Price",

        ),
        onChanged: (String Price){
          getPrice(price);
        },
        ),


      ]
    ),
    )
    )
    );
  }
}