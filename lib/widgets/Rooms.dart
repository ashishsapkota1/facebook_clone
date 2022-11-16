import 'package:facebook_clone/models/model.dart';
import 'package:flutter/material.dart';

class MyRooms extends StatelessWidget {
  final List<User> onlineUsers;
  const MyRooms({Key? key, required this.onlineUsers}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      color: Colors.red,
      child: ListView.builder(
          padding: EdgeInsets.symmetric(vertical: 4, horizontal: 10),
          scrollDirection: Axis.horizontal,
          itemCount: 1 + onlineUsers.length,
          itemBuilder: (BuildContext context, int index) {
            if (index == 0) {
              return Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8),
                  child: _CreateRoomButton(),
              );
            }
            return Container(
              margin: EdgeInsets.all(2),
              height: 10,
              width: 10,
              color: Colors.green,
            );
          }),
    );
  }
}

class _CreateRoomButton extends StatelessWidget {
  const _CreateRoomButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(onPressed: (){},
        style: OutlinedButton.styleFrom(
            primary: Colors.white,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10),
              side: BorderSide(
                color: Colors.green,
                width: 3,
              )
            ),

        ),
        child: Row(
          children: [
            Icon(Icons.video_call,
            color: Colors.blueAccent,
              size: 30,
            )
          ],
        ),
    );
  }
}

