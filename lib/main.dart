import 'package:flutter/material.dart';
import 'package:wfix/screens/Home_inbox.dart';
import 'package:wfix/screens/House_profile.dart';
import 'package:wfix/screens/Issue_form.dart';
import 'package:wfix/screens/Notification.dart';
import 'package:wfix/screens/Receipt.dart';
import 'package:wfix/screens/Repairs.dart';
import 'package:wfix/screens/User_profile.dart';
import 'package:wfix/screens/address.dart';
import 'package:wfix/screens/wallet.dart';
import 'package:wfix/screens/worker_personal.dart';
import 'screens/Home_map.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        textTheme: TextTheme(
          bodyText1: TextStyle(color: Colors.white),
        ),
      ), initialRoute: 'welcomescreen',
      routes: {
        "home_map": (context) => Home_map(),
        "home_inbox": (context) => Home_inbox(),
        "house_profile": (context) => House_profile(),
        "issue_form": (context) =>Issue_form(),
        "noti": (context) => noti(),
        "receipt": (context) => Receipts(),
        "repairs": (context) => Repairs(),
        "user_profile": (context) => User_profile(),
        "worker_personal": (context) => Worker_personal(),
        "wallet":(context) => wallet(),
        "address":(context) => address(),



      },
      home: Home_map(),
    );
  }
}
