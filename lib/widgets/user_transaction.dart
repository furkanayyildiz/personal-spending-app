import 'package:flutter/material.dart';

//pages
import './new_transaction.dart';
import './transaction_list.dart';
import '../models/transaction.dart';

class UserTransaction extends StatefulWidget {
  const UserTransaction({super.key});

  @override
  State<UserTransaction> createState() => _UserTransactionState();
}

class _UserTransactionState extends State<UserTransaction> {
  final List<Transaction> _userTransactions = [
    Transaction(
      id: "t1",
      name: "Book",
      amount: 50.5,
      date: DateTime.now(),
    ),
    Transaction(
      id: "t2",
      name: "Pen",
      amount: 7.80,
      date: DateTime.now(),
    )
  ];

  void _addNewTransaction(String name, double amount) {
    final newTx = Transaction(
        id: DateTime.now.toString(),
        name: name,
        amount: amount,
        date: DateTime.now());

    setState(() {
      _userTransactions.add(newTx);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        NewTransaction(_addNewTransaction),
        TransactionList(_userTransactions),
      ],
    );
  }
}
