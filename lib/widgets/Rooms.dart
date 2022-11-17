import 'package:facebook_clone/config/palette.dart';
import 'package:facebook_clone/models/model.dart';
import 'package:flutter/material.dart';

class MyRooms extends StatelessWidget {
  final List<User> onlineUsers;
  const MyRooms({Key? key, required this.onlineUsers}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      color: Colors.white,
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
            final User user = onlineUsers[index-1];
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: ProfileAvatar(
                imageUrl: user.imageUrl,
                isActive: true,
              ),
            );
          }),
    );
  }
}

class _CreateRoomButton extends StatelessWidget {
  const _CreateRoomButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: () {},
      style: OutlinedButton.styleFrom(
        primary: Colors.white,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
            side: BorderSide(
              color: Colors.blue,
              width: 2.0,
            )),
      ),
      child: Row(
        children: [
          ShaderMask(
            shaderCallback: (rect) => Palette.createRoom.createShader(rect),
          ),
          Icon(
            Icons.video_call,
            color: Colors.purple,
            size: 30,
          ),
          const SizedBox(
            width: 4,
          ),
          Text(
            'Create\n Room',
            style: TextStyle(color: Colors.blue[400]),
          )
        ],
      ),
    );
  }
}
