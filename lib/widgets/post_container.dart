
import 'package:cached_network_image/cached_network_image.dart';
import 'package:facebook_clone/models/model.dart';
import 'package:flutter/material.dart';

import '../models/user_model.dart';

class PostContainer extends StatelessWidget {
  final User currentUser;
  const PostContainer({Key? key,
  required this.currentUser,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(10, 8, 10, 3),
      color: Colors.white,
      child: Column(
        children: [
          Row(
            children: [
              ProfileAvatar(imageUrl: currentUser.imageUrl),
              const SizedBox(
                width: 10,
              ),
              Expanded(
                child: TextField(
                  decoration: InputDecoration.collapsed(
                    hintText: 'What\'s on your mind'
                  ),
                ),
              ),
              Icon(Icons.camera_roll,
              color: Colors.green,
              )
            ],
          ),
          const Divider(
            height: 10,
            thickness: 1,
          ),
          Container(
            height: 40,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextButton.icon(onPressed: (){},
                icon: Icon(Icons.videocam,
                color: Colors.red,),
                  label: Text('Live',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold
                  ),
                  ),
                ),
                VerticalDivider(width: 8,),
                TextButton.icon(onPressed: (){},
                  icon: Icon(Icons.photo_library,
                    color: Colors.green,),
                  label: Text('Photo',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                ),
                VerticalDivider(width: 8,),
                TextButton.icon(onPressed: (){},
                  icon: Icon(Icons.video_call,
                    color: Colors.purpleAccent,),
                  label: Text('Room',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
