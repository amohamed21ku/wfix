import 'package:flutter/material.dart';

class Repairs extends StatefulWidget {
  @override
  State<Repairs> createState() => _RepairsState();
}

class _RepairsState extends State<Repairs> {
  // Example list of receipts
  final List<Rep> reps = [
    Rep(
      issueName: 'Issue 1',
      name: 'Receipt 1',
      description: 'This is a sample description for Receipt 1.',
      amount: 50.0,
      status: 'Pending',
    ),
    Rep(
      issueName: 'Issue 2',
      name: 'Receipt 2',
      description: 'This is a sample description for Receipt 2.',
      amount: 30.0,
      status: 'Paid',
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
        itemCount: reps.length,
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      reps[index].issueName,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      reps[index].name,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,

                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Container(
                  padding: EdgeInsets.all(10.0),
                  color: Colors.white,
                  child: Text(
                    reps[index].description,
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Total Amount:',
                          style: TextStyle(fontSize: 16),
                        ),
                        Text(
                          '₺5000.00',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Status:',
                          style: TextStyle(fontSize: 16),
                        ),
                        Text(
                          reps[index].status
                          ,
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
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

class Rep {
  final String issueName;
  final String name;
  final String description;
  final double amount;
  final String status;

  Rep({
    required this.name,
    required this.issueName,
    required this.amount,
    required this.description,
    required this.status,
  });
}
