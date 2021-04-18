import 'components/drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MyApp());
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DashBoard(),
    );
  }
}

class DashBoard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('DashBoard'), centerTitle: true),
      drawer: drawer(context),
    );
  }
}

class Groups extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Groups'), centerTitle: true),
      drawer: drawer(context),
      floatingActionButton: IconButton(
        icon: Icon(Icons.add),
        onPressed: () {},
      ),
    );
  }
}

class Places extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Places'), centerTitle: true),
      drawer: drawer(context),
      floatingActionButton: IconButton(
        icon: Icon(Icons.add),
        onPressed: () {},
      ),
    );
  }
}
