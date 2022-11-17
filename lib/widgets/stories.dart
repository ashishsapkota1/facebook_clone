import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../config/palette.dart';
import '../models/story_model.dart';
import '../models/user_model.dart';

class Stories extends StatelessWidget {
  final User currentUser;
  final List<Story> stories;
  const Stories({Key? key,
  required this.currentUser,
    required this.stories
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      color: Colors.white70,
      child: ListView.builder(
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 8),
          scrollDirection: Axis.horizontal,
          itemCount: 1+ stories.length,
          itemBuilder: (BuildContext context, int index){
            if(index == 0){
              return Padding(
                  padding:const EdgeInsets.symmetric(horizontal: 8),
                child: _StoryCard(
                  isAddStory : true,
                  currentUser: currentUser,
                  story: stories[0],

                ),
              );
            }
            final Story story = stories[index-1];
            return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 4),
              child: _StoryCard(
                  currentUser: currentUser,
                  story: story),
            );
          }),
    );
  }
}


class _StoryCard extends StatelessWidget {
  final bool isAddStory;
  final User currentUser;
  final Story story;

  const _StoryCard({super.key,
     required this.currentUser,
     this.isAddStory=false,
     required this.story});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: CachedNetworkImage(
              imageUrl: isAddStory ? currentUser.imageUrl:story.imageUrl,
            height: double.infinity,
            width: 110,
            fit: BoxFit.cover,
          ),
        ),
        Container(
          height: double.infinity,
          width: 110,
          decoration: BoxDecoration(
            gradient: Palette.story
          ),
        )
      ],
    );
  }
}

