import 'package:flutter/material.dart';

import '../widgets/newtransaction.dart';
import '../widgets/transactionlist.dart';
import '../models/transaction.dart';

class UserTransaction extends StatefulWidget {
  @override
  _UserTransactionState createState() => _UserTransactionState();
}

class _UserTransactionState extends State<UserTransaction> {
  final List<Transaction> _userTransactions = [
    Transaction(id: "1", title: "shirt", amount: 30.0, date: DateTime.now()),
    Transaction(id: "2", title: "perfum", amount: 99.90, date: DateTime.now()),
    Transaction(id: "3", title: "book", amount: 20.0, date: DateTime.now()),
    Transaction(id: "4", title: "scarf", amount: 10.0, date: DateTime.now()),
    Transaction(id: "5", title: "dress", amount: 90.8, date: DateTime.now()),
  ];

  void _addNewTransaction(String title, double amount) {
    final newTransaction = Transaction(
      title: title,
      amount: amount,
      id: DateTime.now().toString(),
      date: DateTime.now(),
    );

    setState(() {
      _userTransactions.add(newTransaction);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        NewTransaction(_addNewTransaction),
        TransactionList(_userTransactions),
      ],
    );
  }
}
