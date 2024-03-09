import 'package:flutter/material.dart';

class wallet extends StatelessWidget {
  // Example list of previous transactions
  final List<Transaction> transactions = [
    Transaction(title: 'Transaction 1', amount: -20.0),
    Transaction(title: 'Transaction 2', amount: -10.0),
    Transaction(title: 'Transaction 3', amount: 30.0),
    Transaction(title: 'Transaction 4', amount: -15.0),
  ];

  @override
  Widget build(BuildContext context) {
    // Calculate total amount
    double totalAmount = transactions.fold(0, (prev, transaction) => prev + transaction.amount);

    return Scaffold(
      appBar: AppBar(
        title: Text('Wallet'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            padding: EdgeInsets.all(16.0),
            color: Colors.white24,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Total Balance',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                  ),
                ),
                SizedBox(height: 8.0),
                Text(
                  '\$${totalAmount.toStringAsFixed(2)}',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 16.0),
          Expanded(
            child: ListView.builder(
              itemCount: transactions.length,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  title: Text(transactions[index].title),
                  trailing: Text(
                    '\$${transactions[index].amount.toStringAsFixed(2)}',
                    style: TextStyle(
                      color: transactions[index].amount < 0 ? Colors.red : Colors.green,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class Transaction {
  final String title;
  final double amount;

  Transaction({required this.title, required this.amount});
}
