// this widget is for controlling the text fields
import 'package:flutter/material.dart';

class Newtransaction extends StatelessWidget {
      final titlecontroller=TextEditingController();
    final amountcontroller=TextEditingController();


  @override
  Widget build(BuildContext context) {
    return 
        Card(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              
              Container(
                  
                  padding: EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 3,
                  ),
                  child:TextField(
                    // onChanged: (val){
                    //   titleinput=val;
                    // },
                    controller: titlecontroller,
                    decoration: InputDecoration(
                      labelText: "Title",
                    
                

                    ),
                  ),
              ),
              Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 3,
                  ),
                   child:TextField(
                    //  onChanged: (val) {
                    //    amountinput=val;
                    //  },
                    controller: amountcontroller,
                    decoration: InputDecoration(
                      labelText: "Amount",

                    ),
              ),
          
               ),
               FlatButton(
               //  onPressed: () {
                  // print(titleinput);
                  // print(amountinput);
                // }, 
                onPressed: (){
                  print(titlecontroller.text);
                  print(amountcontroller.text);
                },
                child:Text("Add transaction",style: TextStyle(
                color: Colors.deepOrangeAccent                ),
                
               
               )
               )
           ],
          ),
        );
  }
}