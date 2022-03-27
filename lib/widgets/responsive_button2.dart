import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_cubit/misc/colors.dart';
import 'package:flutter_cubit/widgets/app_text.dart';

class ResponsiveButton2 extends StatelessWidget {
  final bool isResponsive;
  final String? text;
  final Color textColor;
  final double? size;
  final double width;

  const ResponsiveButton2({
    Key? key,
    this.isResponsive = false,
    this.text,
    this.textColor = Colors.white,
    this.size = 20,
    this.width=150,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Container(
        // margin: const EdgeInsets.only(top: 60),
        width: isResponsive == true ? 250 : width,
        height: 60,
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
                    child: AppText(
                      text: text!,
                      color: textColor,
                      size: size!,
                    ),
                  )
                : Container(),
            Container(
              child: Image.asset('img/button-one.png'),
            )
          ],
        ),
      ),
    );
  }
}
