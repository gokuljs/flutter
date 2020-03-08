import 'package:flutter/material.dart';


class Transaction{
  String id;
  String title;
  double amount;
  DateTime date;
  Transaction({   //creating a constructor 
              // @ required tells us that the value should be passed 
    @required this.id,
    @required this.amount,
    @required this.date,
    @required this.title
});
}