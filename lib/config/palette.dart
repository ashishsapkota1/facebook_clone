import 'package:flutter/material.dart';

class Palette {
  static const Color Scaffold = Color(0xFFE9EAEC);
  static const Color facebook = Color(0xFF0B83ED);

  static const LinearGradient createRoom = LinearGradient(
    colors: [Color(0xFF5137D2), Color(0xFF3918DE)],
  );

  static const Color online = Color(0xFF12B040);

  static const LinearGradient story = LinearGradient(
    colors: [Colors.transparent, Colors.black45],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter
  );
}
