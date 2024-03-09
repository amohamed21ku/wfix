import 'package:flutter/material.dart';

class address extends StatefulWidget {
  @override
  _addressState createState() => _addressState();
}

class _addressState extends State<address> {
  // Example list of addresses
  List<String> addresses = [
    '123 Main St, City, Country',
    '456 Elm St, Town, Country',
    '789 Oak St, Village, Country',
  ];

  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Addresses'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: addresses.length,
              itemBuilder: (BuildContext context, int index) {
                return RadioListTile<int>(
                  title: Text(addresses[index]),
                  value: index,
                  groupValue: _selectedIndex,
                  onChanged: (int? value) {
                    setState(() {
                      _selectedIndex = value!;
                    });
                  },
                );
              },
            ),
          ),
          SizedBox(height: 16.0),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: ElevatedButton(
              onPressed: () {
                // Navigate to add or edit address screen based on the requirement
              },
              child: Text('Add/Edit Address'),
            ),
          ),
        ],
      ),
    );
  }
}