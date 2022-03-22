import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_cubit/widgets/app_text.dart';

import '../misc/colors.dart';

class AppButtons extends StatelessWidget {
  String? text;
  IconData? icon;
  final Color color;
  final Color backgroundColor;
  final double size;
  final Color borderColor;
  bool? isIcon;
  AppButtons(
      {Key? key,
      this.text = "Hi",
      this.icon,
      this.isIcon = false,
      required this.color,
      required this.backgroundColor,
      required this.size,
      required this.borderColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // margin: const EdgeInsets.only(right: 12),
      width: size,
      height: size,
      decoration: BoxDecoration(
          border: Border.all(color: borderColor, width: 1.0),
          color: backgroundColor,
          borderRadius: BorderRadius.circular(15)),
      child: isIcon == false
          ? Center(
              child: AppText(
              text: text!,
              color: color,
            ))
          : Center(
              child: Icon(
              icon,
              color: color,
            )),
    );
  }
}
