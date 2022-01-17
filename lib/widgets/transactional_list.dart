import 'package:flutter/material.dart';
import 'package:flutter_guide/models/transaction.dart';
import 'package:intl/intl.dart';

class TransactionList extends StatelessWidget {
  final List<Transaction> transactions;

  TransactionList(this.transactions);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      child: transactions.isEmpty
          ? Column(
              children: [
                Text(
                  'No transactions added yet!',
                  style: Theme.of(context).textTheme.subtitle1,
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 200,
                  child: Image.asset(
                    'assets/images/waiting.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            )
          : ListView.builder(
              itemBuilder: (ctx, index) {
                return ListTile(
                  leading: CircleAvatar(
                    radius: 30,
                    child: Text('\$${transactions[index].amount}'),
                  ),
                );
              },
              itemCount: transactions.length,
            ),
    );
  }
}
