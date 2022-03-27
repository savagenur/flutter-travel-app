import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_cubit/misc/colors.dart';
import 'package:flutter_cubit/widgets/app_large_text2.dart';
import 'package:flutter_cubit/widgets/responsive_button2.dart';

import '../widgets/app_text2.dart';
import '../widgets/responsive_button.dart';

class WelcomePage2 extends StatefulWidget {
  const WelcomePage2({Key? key}) : super(key: key);

  @override
  State<WelcomePage2> createState() => _WelcomePage2State();
}

class _WelcomePage2State extends State<WelcomePage2> {
  List<String> pageImage = [
    'welcome-one.png',
    'welcome-two.png',
    'welcome-three.png',
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
              margin: const EdgeInsets.only(top: 110, left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const AppLargeText2(text: "Travel"),
                      const SizedBox(
                        height: 5,
                      ),
                      const AppText2(
                        text: "Discover",
                        color: Colors.black54,
                        size: 30,
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Container(
                        width: 250,
                        child: AppText2(
                            text:
                                "Mountain hikes give you an incredible sense of freedom along with endurance tests.",
                            color: AppColors.mainTextColor),
                      ),
                      ResponsiveButton2(isResponsive: false,text: "Click here!",),
                    ],
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 15),
                    child: Column(
                      children: List.generate(pageImage.length, (dotIndex) {
                        return Container(
                          margin: const EdgeInsets.only(bottom: 3),
                          width: 10,
                          height: dotIndex==index?25:10,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color:dotIndex==index? AppColors.mainColor:AppColors.mainColor.withOpacity(0.6)
                          ),
                        );
                      }),
                    ),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
