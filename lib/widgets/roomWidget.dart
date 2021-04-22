import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:location_app/data/data.dart';
import 'package:location_app/widgets/profileImage.dart';

class RoomWidget extends StatelessWidget {
  final Room room;
  RoomWidget(this.room);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      width: double.infinity,
      height: 120,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: Colors.green[200],
      ),
      child: Stack(children: [
        Row(
          children: [
            Expanded(
              flex: 1,
              child: Container(
                  padding: EdgeInsets.all(8),
                  height: 100,
                  //color: Colors.red,
                  child: Stack(
                    children: [
                      ProfileImage(room.activeUsers.first.imageUrl, 60),
                      Positioned(
                          bottom: 0,
                          right: 15,
                          child:
                              ProfileImage(room.activeUsers.last.imageUrl, 60))
                    ],
                  )),
            ),
            Expanded(
              flex: 2,
              child: Container(
                //color: Colors.amber,
                child: Column(
                  children: [
                    Text(
                      room.club,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    SizedBox(height: 7),
                    Text(
                      room.description,
                      overflow: TextOverflow.fade,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        Positioned(
          right: 2,
          bottom: 0,
          child: Container(
            padding: EdgeInsets.all(5),
            width: 60,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.horizontal(
                    left: Radius.circular(20), right: Radius.circular(20)),
                border: Border.all()),
            child: RichText(
                text: TextSpan(children: [
              WidgetSpan(
                child: Icon(Icons.circle, color: Colors.green),
              ),
              TextSpan(
                text: " ${room.activeUsers.length}",
                style: Theme.of(context)
                    .textTheme
                    .bodyText1
                    .copyWith(fontSize: 20, fontWeight: FontWeight.bold),
              )
            ])),
          ),
        )
      ]),
    );
  }
}
