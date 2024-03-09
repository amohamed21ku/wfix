import 'package:flutter/material.dart';

class User_profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('User Profile'),
        actions: [
          IconButton(
            icon: Icon(Icons.notifications),
            onPressed: () {
              Navigator.pushNamed(context, "noti");
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            CircleAvatar(
              radius: 50,
              // Replace this with actual profile picture
              backgroundImage: AssetImage('assets/profile_picture.jpg'),
            ),
            SizedBox(height: 16),
            Text(
              'Kenan Abbasov',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                OptionButton(
                  icon: Icons.receipt,
                  label: 'Receipts',
                  onpress: () {
                    Navigator.pushNamed(context, "receipt");
                  },
                ),
                OptionButton(
                  icon: Icons.account_balance_wallet,
                  label: 'My Wallet',
                  onpress: () {
                    Navigator.pushNamed(context, "wallet");
                  },
                ),
                OptionButton(
                  icon: Icons.location_on,
                  label: 'Address',
                  onpress: () {
                    Navigator.pushNamed(context, "address");
                  },
                ),
                OptionButton(
                  icon: Icons.settings,
                  label: 'Settings',
                  onpress: () {},
                ),
              ],
            ),
            SizedBox(height: 20),
            Column(
              children: [
                Container(
                  padding: EdgeInsets.all(16.0),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text(
                        'House Information',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Address: 123 Main St, City, Country',
                        style: TextStyle(fontSize: 16),
                      ),
                      Text(
                        'Owner: Kenan Abbasov',
                        style: TextStyle(fontSize: 16),
                      ),


                    ],
                  ),
                ),
                SizedBox(height: 30),
                Text(
                  'Balance:',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10),
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
                SizedBox(height: 5),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Remaining:',
                      style: TextStyle(fontSize: 16),
                    ),
                    Text(
                      '₺2500.00',
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
      ),
    );
  }
}

class OptionButton extends StatelessWidget {
  final IconData icon;
  final String label;
  final VoidCallback onpress;

  const OptionButton({
    Key? key,
    required this.icon,
    required this.label,
    required this.onpress,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        IconButton(icon: Icon(icon), onPressed: onpress),
        Text(label),
      ],
    );
  }
}
