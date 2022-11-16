import 'package:flutter/material.dart';
import './transaction_list.dart';
import '../models/transaction.dart';
import './new_transaction.dart';

class UserTranscation extends StatefulWidget {
  const UserTranscation({Key key}) : super(key: key);

  @override
  State<UserTranscation> createState() => _UserTranscationState();
}

class _UserTranscationState extends State<UserTranscation> {
  final List<Transaction> _userTransaction = [
    Transaction(
      id: 't1',
      title: 'new shoes',
      amount: 70,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't2',
      title: 'new book',
      amount: 30,
      date: DateTime.now(),
    ),
  ];

  void _addNewTransaction(String txTitle, double txAmount) {
    final newTx = Transaction(
      title: txTitle,
      amount: txAmount,
      date: DateTime.now(),
      id: DateTime.now().toString(),
    );

    setState(() {
      _userTransaction.add(newTx);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        //_addNewTransactionはプライベートメソッドなので、直接呼び出しはできない
        // ポインタを渡す必要がある。
        NewTransaction(_addNewTransaction),
      ],
    );
  }
}
