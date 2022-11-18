import 'package:cached_network_image/cached_network_image.dart';
import 'package:facebook_clone/config/palette.dart';
import 'package:flutter/material.dart';

class ProfileAvatar extends StatelessWidget {
  final String imageUrl;
  final bool isActive;
  final bool hasBorder;
  const ProfileAvatar({Key? key,
  required this.imageUrl,
    this.isActive=false,
    this.hasBorder=false
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CircleAvatar(
          radius: 20,
          backgroundColor: Palette.facebook,
          child: CircleAvatar(
            radius: hasBorder ? 17 :20,
            backgroundColor: Colors.grey[200],
            backgroundImage: CachedNetworkImageProvider(imageUrl),

          ),
        ),
        isActive ? Positioned(
            bottom: 12,
            right: 8,
            child: Container(
              height: 13,
              width: 13,
              decoration: BoxDecoration(
                color: Palette.online,
                shape: BoxShape.circle,
                border: Border.all(
                  width: 2,
                  color: Colors.white

                )
              ),
            )) : const SizedBox.shrink()
      ],
    );
  }
}
