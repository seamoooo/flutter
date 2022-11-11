import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  final Function addNewTransaction;
  final titleController = TextEditingController();
  final amountController = TextEditingController();

  NewTransaction(this.addNewTransaction);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            TextField(
              decoration: InputDecoration(labelText: 'titile'),
              controller: titleController,
            ),
            TextField(
              decoration: InputDecoration(labelText: 'amount'),
              controller: amountController,
              //   onChanged: (val) => amountInput = val,
              // ),
            ),
            ElevatedButton(
              child: Text(
                'Add transactions',
                style: TextStyle(
                  color: Colors.purple,
                  fontSize: 12,
                ),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white, //ボタンの背景色
              ),
              onPressed: () {
                // addNewTransactionがdouble側の呼び出しのため、parseする
                addNewTransaction(
                  titleController.text,
                  double.parse(amountController.text),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
