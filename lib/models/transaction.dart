import 'package:flutter/material.dart';

// ignore: empty_constructor_bodies
class Transaction {
  final String id;
  final String name;
  final double amount;
  final DateTime date;

  Transaction(
      {required this.id,
      required this.name,
      required this.amount,
      required this.date});
}
