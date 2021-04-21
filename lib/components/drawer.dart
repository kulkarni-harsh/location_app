import 'package:flutter/material.dart';
import '../main.dart';

Drawer drawer(BuildContext context) {
  return Drawer(
      child: Container(
          child: ListView(padding: EdgeInsets.zero, children: <Widget>[
    Container(
      height: 90,
      child: DrawerHeader(
        child: Text(
          'Navigation',
          style: TextStyle(fontSize: 30),
        ),
        decoration: BoxDecoration(
          color: Colors.blue,
        ),
      ),
    ),
    ListTile(
      title: Text('Dashboard'),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => DashBoard()),
        );
      },
    ),
    ListTile(
      title: Text('Groups'),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Groups()),
        );
      },
    )
  ])));
}
