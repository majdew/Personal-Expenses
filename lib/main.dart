import 'package:flutter/material.dart';

import './transaction.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter App",
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final List<Transaction> transactions = [
    Transaction(id: "t1", title: "shirt", amount: 30, date: DateTime.now()),
    Transaction(id: "t2", title: "perfum", amount: 99.99, date: DateTime.now()),
    Transaction(id: "t3", title: "book", amount: 200, date: DateTime.now()),
    Transaction(id: "t4", title: "scarf", amount: 10, date: DateTime.now()),
    Transaction(id: "t5", title: "dress", amount: 1100, date: DateTime.now()),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Flutter App")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: double.infinity,
              child: Card(
                elevation: 8,
                color: Colors.lightBlue,
                child: Text("Charts"),
              ),
            ),
            Column(
              children: transactions.map((transaction) {
                return Card(
                  child: Row(
                    children: [
                      Container(
                        child: Text(
                          transaction.amount.toString(),
                        ),
                      ),
                      Column(
                        children: [
                          Text(
                            transaction.title,
                          ),
                          Text(
                            transaction.date.toString(),
                          )
                        ],
                      ),
                    ],
                  ),
                );
              }).toList(),
            ),
          ],
        ),
      ),
    );
  }
}
