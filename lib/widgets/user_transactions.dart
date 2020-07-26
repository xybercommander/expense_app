import 'package:flutter/material.dart';
import 'package:expense_app/widgets/new_transaction.dart';
import 'package:expense_app/models/transaction.dart';
import 'package:expense_app/widgets/transaction_list.dart';

class UserTransactions extends StatefulWidget {
  @override
  _UserTransactionsState createState() => _UserTransactionsState();
}

class _UserTransactionsState extends State<UserTransactions> {
  final List<Transaction> _userTransationList = [
    Transaction(
        id: 't1', title: 'New Shoes', amount: 200, date: DateTime.now()),
    Transaction(
        id: 't2', title: 'Weekly Groceries', amount: 100, date: DateTime.now()),
  ];

  void _addNewTransaction(String txTitle, double txAmount) {
    final newTx = Transaction(
        id: DateTime.now().toString(),
        title: txTitle,
        amount: txAmount,
        date: DateTime.now());

    setState(() {
      _userTransationList.add(newTx);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        NewTransaction(_addNewTransaction),
        TransactionList(_userTransationList)
      ],
    );
  }
}
