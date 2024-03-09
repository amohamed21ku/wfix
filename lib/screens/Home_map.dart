
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home_map extends StatefulWidget {
  @override
  _MapScreenState createState() => _MapScreenState();
}

class _MapScreenState extends State<Home_map> {
  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        key: _scaffoldKey,
        body: CustomScrollView(
          slivers: [
            SliverFillRemaining(
              hasScrollBody: false,
              child:  Stack(
                children: <Widget>[

                  // Map
                  Column(
                    children: [
                      Placeholder(), // here add maps widget
                      Expanded(
                        child: Column(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(8.0),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.5),
                                    spreadRadius: 2,
                                    blurRadius: 7,
                                    offset: Offset(0, 3),
                                  ),
                                ],
                              ),
                              child: TextField(
                                decoration: InputDecoration(
                                  hintText: 'Search...',
                                  contentPadding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 14.0),
                                  border: InputBorder.none,
                                  suffixIcon: Icon(Icons.search),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ), // Replace with your map widget

                  // Menu Button
                  Positioned(
                    top: 40.0,
                    left: 16.0,
                    child: IconButton(
                      icon: Icon(Icons.menu),
                      onPressed: () {
                        _scaffoldKey.currentState!.openDrawer();
                      },
                    ),
                  ),

                  // Search Bar

                ],
              ),
            )
          ],

        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.greenAccent,
                ),
                child: Text(
                  'Menu',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 24,
                  ),
                ),
              ),
              ListTile(
                title: Text('Profile'),
                onTap: () {
                  Navigator.pushNamed(context, "user_profile");

                },
              ),
              ListTile(
                title: Text('Repairs'),
                onTap: () {
                  Navigator.pushNamed(context, "repairs");
                },
              ),
              ListTile(
                title: Text('Main'),
                onTap: () {
                  Navigator.pushNamed(context, "main_map");
                },
              ),
              ListTile(
                title: Text('Notification'),
                onTap: () {
                  Navigator.pushNamed(context, "noti");
                },
              ),
              // Add more list tiles for additional menu items
            ],
          ),
        ),
      ),
    );
  }
}