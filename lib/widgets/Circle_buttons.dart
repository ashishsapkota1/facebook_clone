import 'package:flutter/material.dart';

class MyButtons extends StatelessWidget {
  final Function onpressed;
  final double iconSize;
  final IconData icon;
  final Color color;
  const MyButtons({
    required this.iconSize,
    required this.icon,
    required this.onpressed,
    required this.color

});

  @override
  Widget build(BuildContext context) {
    return  Container(
      margin: EdgeInsets.all(6),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.grey[200],
      ),
      child: IconButton(
        onPressed: onpressed(),
        icon: Icon(icon),
        iconSize: iconSize,
        color: color,
      ),
    );
  }
}
