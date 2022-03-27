import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_cubit/misc/colors.dart';
import 'package:flutter_cubit/widgets/app_large_text.dart';
import 'package:flutter_cubit/widgets/responsive_button1.dart';

import '../widgets/app_text.dart';

class WelcomePage1 extends StatefulWidget {
  const WelcomePage1({Key? key}) : super(key: key);

  @override
  State<WelcomePage1> createState() => _WelcomePage1State();
}

class _WelcomePage1State extends State<WelcomePage1> {
  List<String> pageImage = [
    "welcome-one.png",
    "welcome-two.png",
    "welcome-three.png",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: PageView.builder(
      scrollDirection: Axis.vertical,
      itemCount: pageImage.length,
      itemBuilder: (context, index) {
        return Container(
          width: double.maxFinite,
          height: double.maxFinite,
          decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage("img/" + pageImage[index]))),
          child: Container(
            margin: const EdgeInsets.only(left: 20, top: 120),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AppLargeText(text: "Trips"),
                    const SizedBox(
                      height: 5,
                    ),
                    AppText(
                      text: "Mountain",
                      size: 30,
                      color: AppColors.bigTextColor,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      width: 300,
                      child: AppText(
                          color: AppColors.mainColor,
                          text:
                              "Mountain hikes give you an incredible sense of freedom along with endurance tests."),
                    ),
                    const ResponsiveButton1(),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: List.generate(pageImage.length, (dotIndex) {
                    return Container(
                      margin: const EdgeInsets.only(bottom: 3, right: 20),
                      width: 20,
                      height: index == dotIndex ? 60 : 20,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: index == dotIndex
                            ? AppColors.mainColor
                            : AppColors.mainColor.withOpacity(0.8),
                      ),
                    );
                  }),
                )
              ],
            ),
          ),
        );
      },
    ));
  }
}
