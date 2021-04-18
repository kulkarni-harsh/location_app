import 'components/drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

List groups = ['Group 1', 'Group 2', 'Group 3'];

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

class Groups extends StatefulWidget {
  @override
  _GroupsState createState() => _GroupsState();
}

class _GroupsState extends State<Groups> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Groups'), centerTitle: true),
        drawer: drawer(context),
        body: ListView.builder(
            itemCount: groups.length,
            itemBuilder: (BuildContext context, int index) {
              return ListTile(
                title: Text(groups[index]),
                onTap: () {},
              );
            }),
        floatingActionButton: FloatingActionButton(
            backgroundColor: Colors.blue,
            child: Icon(Icons.add),
            onPressed: () {
              setState(() {
                int tempPlusOne = groups.length + 1;
                groups.add('Group $tempPlusOne');
              });
            }));
  }
}

class Places extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Places'), centerTitle: true),
        drawer: drawer(context),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.blue,
          child: Icon(Icons.add),
          onPressed: () {},
        ));
  }
}
