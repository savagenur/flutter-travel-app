import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_cubit/misc/colors.dart';

class AppText1 extends StatelessWidget {
  final String text;
  final Color color;
  final double size;
  const AppText1(
      {Key? key,
      required this.text,
      this.color = Colors.black54,
      this.size = 15})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontSize: size,
      ),
    );
  }
}
