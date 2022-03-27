import 'package:flutter/material.dart';

class AppLargeText1 extends StatelessWidget {
  final String text;
  final Color? color;
  final double? size;
  const AppLargeText1({
    Key? key,
    required this.text,
    this.color=Colors.black,
    this.size=30,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontSize: size,
        fontWeight: FontWeight.bold
      ),
    );
  }
}
