
import 'dart:core';

import 'package:facebook_clone/Pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../widgets/tabBar.dart';

class NavBar extends StatefulWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  final List<Widget> _screens =[
    HomePage(),
    Scaffold(),
    Scaffold(),
    Scaffold(),
    Scaffold(),
    Scaffold(),
  ];
  final List<IconData> _icons = [
    Icons.home,
    Icons.ondemand_video,
    Icons.account_circle_outlined,
    MdiIcons.accountGroupOutline,
    MdiIcons.bellOutline,
    Icons.menu

  ];
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: _icons.length,
        child: Scaffold(
          body: IndexedStack(
            index: _selectedIndex,
            children: _screens,
          ),
          bottomNavigationBar: CustomTabBar(
            icons: _icons,
            selectedIndex: _selectedIndex,
            onTap:(index) => setState(() => _selectedIndex=index)
          ),
        )
    );
  }
}

