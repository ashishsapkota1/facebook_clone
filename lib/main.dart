
import 'package:facebook_clone/Pages/home_page.dart';
import 'package:facebook_clone/config/palette.dart';
import 'package:flutter/material.dart';

import 'Pages/navbar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Facebook flutter UI',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        scaffoldBackgroundColor: Palette.Scaffold,
      ),
      home: NavBar(),
    );
  }
}

