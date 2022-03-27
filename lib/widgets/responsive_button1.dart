import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_cubit/misc/colors.dart';
import 'package:flutter_cubit/widgets/app_text1.dart';

class ResponsiveButton1 extends StatelessWidget {
  final bool isResponsive;
  final String? text;
  final Color textColor;

  const ResponsiveButton1(
      {Key? key,
      this.text,
      this.isResponsive = false,
      this.textColor = Colors.white})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Container(
        margin: const EdgeInsets.only(top: 50),
        width: isResponsive == true ? double.maxFinite : 120,
        height: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: AppColors.mainColor,
        ),
        child: Row(
          mainAxisAlignment: isResponsive == true
              ? MainAxisAlignment.spaceBetween
              : MainAxisAlignment.center,
          children: [
            isResponsive == true
                ? Container(
                  margin: const EdgeInsets.only(left: 20),
                  child: AppText1(
                      text: text!,
                      color: textColor,
                    ),
                )
                : Container(),
            Image.asset("img/button-one.png")
          ],
        ),
      ),
    );
  }
}
