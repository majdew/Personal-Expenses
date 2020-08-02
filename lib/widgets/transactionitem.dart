import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import './../models/transaction.dart';

class TransactionItem extends StatelessWidget {
  final Transaction userTransaction;
  final Function deleteTransaction;

  const TransactionItem({
    Key key,
    @required  this.userTransaction,
    @required this.deleteTransaction,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(
        vertical: 8,
        horizontal: 5,
      ),
      elevation: 8,
      child: ListTile(
        leading: CircleAvatar(
          radius: 30,
          child: Padding(
            padding: const EdgeInsets.all(6),
            child: FittedBox(
              fit: BoxFit.cover,
              child: Text(
                '\$${userTransaction.amount}',
              ),
            ),
          ),
        ),
        title: Text(
          userTransaction.title,
          style: Theme.of(context).textTheme.headline6,
        ),
        subtitle: Text(
          DateFormat.yMMMd().format(userTransaction.date),
        ),
        trailing: MediaQuery.of(context).size.width > 400
            ? FlatButton.icon(
                onPressed: () => deleteTransaction(userTransaction.id),
                icon: Icon(
                  Icons.delete,
                  color: Theme.of(context).errorColor,
                ),
                label: const Text("Delete"),
                textColor: Colors.red,
              )
            : IconButton(
                icon: Icon(
                  Icons.delete,
                  color: Theme.of(context).errorColor,
                ),
                onPressed: () => deleteTransaction(userTransaction.id),
              ),
      ),
    );
  }
}
