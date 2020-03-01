import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Transaction{

  // setting variables required for transaction 

  final String id;
  final String title;
  final double amount;
  final DateTime date;

  Transaction({
    @required this.id,
    @required this.title,
    @required this.amount,
    @required this.date});
} 