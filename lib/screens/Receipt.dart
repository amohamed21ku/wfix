import 'package:flutter/material.dart';

class Receipts extends StatelessWidget {
  final List<Receipt> receipts = [
    Receipt(
      name: 'Receipt 1',
      date: '12.03.2024',
      issue: 'This is a sample issue explanation for Receipt 1.',
      deductedAmount: 50.0,
      leftAmount: 200.0,
    ),
    Receipt(
      name: 'Receipt 2',
      date: '15.03.2024',
      issue: 'This is a sample issue explanation for Receipt 2.',
      deductedAmount: 30.0,
      leftAmount: 170.0,
    ),
    Receipt(
      name: 'Receipt 3',
      date: '17.03.2024',
      issue: 'This is a sample issue explanation for Receipt 3.',
      deductedAmount: 60.0,
      leftAmount: 170.0,
    ),
    Receipt(
      name: 'Receipt 4',
      date: '17.03.2024',
      issue: 'This is a sample issue explanation for Receipt 3.',
      deductedAmount: 60.0,
      leftAmount: 170.0,
    ),
    Receipt(
      name: 'Receipt 5',
      date: '17.03.2024',
      issue: 'This is a sample issue explanation for Receipt 3.',
      deductedAmount: 60.0,
      leftAmount: 170.0,
    ),
    // Add more receipts as needed
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Receipts'),
      ),
      body: ListView.builder(
        itemCount: receipts.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            margin: EdgeInsets.all(10.0),
            padding: EdgeInsets.all(10.0),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey),
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  receipts[index].name,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 5.0),
                Row(
                  children: [
                    Text(
                      'Date: ${receipts[index].date}',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Spacer(),
                    Text(
                      '₺${receipts[index].leftAmount.toStringAsFixed(2)}',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                SizedBox(height: 10.0),
                Text(
                  'Issue:',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 5.0),
                Text(receipts[index].issue),
                SizedBox(height: 10.0),
                Row(
                  children: [
                    Text(
                      'Deducted: ₺${receipts[index].deductedAmount.toStringAsFixed(2)}',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Spacer(),
                    Text(
                      'Left: ₺${receipts[index].leftAmount.toStringAsFixed(2)}',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

class Receipt {
  final String name;
  final String date;
  final String issue;
  final double deductedAmount;
  final double leftAmount;

  Receipt({
    required this.name,
    required this.date,
    required this.issue,
    required this.deductedAmount,
    required this.leftAmount,
  });
}