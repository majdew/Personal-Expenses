import 'package:flutter/cupertino.dart';

import 'package:flutter/foundation.dart';

class Transaction {
  final String title;
  final String id;
  final double amount;
  final DateTime date;

  Transaction({
    @required this.id,
    @required this.amount,
    @required this.title,
    @required this.date,
  });
}
