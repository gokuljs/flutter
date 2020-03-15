import 'package:expense/widgets/new_transaction.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import './models/transaction.dart';
import './widgets/new_transaction.dart';

import './widgets/transaction_list.dart';

void main()=>runApp(Myapp());
class Myapp extends StatelessWidget {
  const Myapp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "expense tracker",
      home: Myhomepage(),
    );
  }
}


class Myhomepage extends StatelessWidget {
    // final List<Transaction> transaction=[
    //   Transaction(
    //   id: 't1',
    //   title: "New shoes",
    //   amount:1700,
    //   date: DateTime.now(),
      
    //   ),
    //    Transaction(
    //   id: 't2',
    //   title: "New laptop",
    //   amount:1700,
    //   date: DateTime.now(),
      
    //   ),
      
    //    Transaction(
    //   id: 't3',
    //   title: "New lap",
    //   amount:1700,
    //   date: DateTime.now(),
      
    // //   ),
      
    //    Transaction(
    //   id: 't3',
    //   title: "New lap",
    //   amount:1700,
    //   date: DateTime.now(),
      
    //   ),
    //    Transaction(
    //   id: 't3',
    //   title: "New lap",
    //   amount:1700,
    //   date: DateTime.now(),
      
    //   ),
    //    Transaction(
    //   id: 't3',
    //   title: "New lap",
    //   amount:1700,
    //   date: DateTime.now(),
      
    //   ),
    //  ]; 
    // String titleinput;
    // String amountinput;

    // final titlecontroller=TextEditingController();
    // final amountcontroller=TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text('expense tracker'),
      ),

      body:Column(
       // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        


        // Card(
        //   child: Column(
        //     crossAxisAlignment: CrossAxisAlignment.end,
        //     children: <Widget>[
              
        //       Container(
                  
        //           padding: EdgeInsets.symmetric(
        //             horizontal: 10,
        //             vertical: 3,
        //           ),
        //           child:TextField(
        //             // onChanged: (val){
        //             //   titleinput=val;
        //             // },
        //             controller: titlecontroller,
        //             decoration: InputDecoration(
        //               labelText: "Title",
                    
                

        //             ),
        //           ),
        //       ),
        //       Container(
        //           padding: EdgeInsets.symmetric(
        //             horizontal: 10,
        //             vertical: 3,
        //           ),
        //            child:TextField(
        //             //  onChanged: (val) {
        //             //    amountinput=val;
        //             //  },
        //             controller: amountcontroller,
        //             decoration: InputDecoration(
        //               labelText: "Amount",

        //             ),
        //       ),
          
        //        ),
        //        FlatButton(
        //        //  onPressed: () {
        //           // print(titleinput);
        //           // print(amountinput);
        //         // }, 
        //         onPressed: (){
        //           print(titlecontroller.text);
        //           print(amountcontroller.text);
        //         },
        //         child:Text("Add transaction",style: TextStyle(
        //         color: Colors.deepOrangeAccent                ),
                
               
        //        )
        //        )
        //    ],
        //   ),
        // ),
        Newtransaction(),
        Transactionlist(),
       ],)

    );
    
  }
}