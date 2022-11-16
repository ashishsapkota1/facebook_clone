import 'package:facebook_clone/config/palette.dart';
import 'package:facebook_clone/data/data.dart';
import 'package:facebook_clone/widgets/widgets.dart';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';


class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            systemOverlayStyle: SystemUiOverlayStyle.light,
            backgroundColor: Colors.white,
            title: Text(
              'facebook',
              style: TextStyle(
                color: Palette.facebook,
                fontSize: 28,
                fontWeight: FontWeight.bold,
                letterSpacing: -1.2,
              ),
            ),
            actions: [
              MyButtons(
                  iconSize: 30,
                  icon: Icons.search_rounded,
                  color: Colors.black,
                  onpressed: () {}),
              MyButtons(iconSize: 30,
                  color: Colors.black,
                  icon: MdiIcons.facebookMessenger,
                  onpressed: (){})
            ],
          ),
          SliverToBoxAdapter(
            child: PostContainer(currentUser: currentUser),
          ),
          SliverPadding(
            padding:  EdgeInsets.only(top: 10,bottom: 5),
            sliver: SliverToBoxAdapter(
              child: MyRooms(onlineUsers: onlineUsers),
            ),
          )
        ],
      ),
    );
  }
}
