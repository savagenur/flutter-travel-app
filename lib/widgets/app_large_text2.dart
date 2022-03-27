import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppLargeText2 extends StatelessWidget {
  final String text;
  final double size;
  final Color color;
  const AppLargeText2({
    Key? key,
    required this.text,
    this.size=30,
    this.color=Colors.black,
    }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: size,
        fontWeight: FontWeight.bold,
        color: color, 
      ),
    );
  }
}
