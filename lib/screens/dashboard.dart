import 'package:flutter/material.dart';
import 'package:location_app/data/data.dart';
import 'package:location_app/widgets/roomWidget.dart';

class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green[100],
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            Icons.menu,
            color: Colors.black,
          ),
          onPressed: () => {},
        ),
        actions: [
          IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.black,
              ),
              onPressed: () {})
        ],
      ),
      body: Padding(
          padding: const EdgeInsets.fromLTRB(10, 10, 10, 100),
          child: ListView(
            padding: const EdgeInsets.all(10),
            children: roomsList
                .map((e) => Padding(
                      padding: const EdgeInsets.only(bottom: 8),
                      child: RoomWidget(e),
                    ))
                .toList(),
          )),
    );
  }
}
