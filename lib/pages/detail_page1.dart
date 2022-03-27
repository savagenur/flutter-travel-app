import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_cubit/misc/colors.dart';
import 'package:flutter_cubit/widgets/app_large_text.dart';
import 'package:flutter_cubit/widgets/app_text.dart';
import 'package:flutter_cubit/widgets/responsive_button2.dart';

class DetailPage1 extends StatefulWidget {
  const DetailPage1({Key? key}) : super(key: key);

  @override
  State<DetailPage1> createState() => _DetailPage1State();
}

class _DetailPage1State extends State<DetailPage1> {
  int selectedStar = 3;
  int unselected = -1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        child: Stack(
          children: [
            Positioned(
              child: Container(
                height: 350,
                width: double.maxFinite,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage("img/mountain.jpeg"),
                  ),
                ),
              ),
            ),
            Positioned(
              top: 50,
              left: 20,
              child: Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.menu),
                    color: Colors.white,
                  ),
                ],
              ),
            ),
            Positioned(
              top: 300,
              child: Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40),
                  ),
                  color: Colors.white,
                ),
                child: Container(
                  margin: const EdgeInsets.only(top: 30, left: 20, right: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          AppLargeText(text: "Yosemite"),
                          AppLargeText(
                            text: "\$ 250",
                            color: AppColors.mainColor,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.place,
                            color: AppColors.mainColor,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          AppText(
                            text: 'USA, California',
                            color: AppColors.mainColor,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Wrap(
                            children: List.generate(5, (index) {
                              return Icon(
                                Icons.star,
                                color: index < selectedStar
                                    ? AppColors.starColor
                                    : Colors.grey,
                              );
                            }),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          AppText(text: "($selectedStar.0)")
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      AppLargeText(
                        text: "People",
                        size: 22,
                      ),
                      const SizedBox(
                        height: 7,
                      ),
                      AppText(
                        text: "Number of your people in your group:",
                        color: AppColors.textColor2,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Wrap(
                        children: List.generate(5, (index) {
                          return InkWell(
                            onTap: () {
                              setState(() {
                                unselected = index;
                              });
                            },
                            child: Container(
                              margin: const EdgeInsets.only(right: 10),
                              width: 60,
                              height: 60,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: unselected == index
                                    ? Colors.black87
                                    : AppColors.buttonBackground,
                              ),
                              child: Center(
                                  child: AppText(
                                text: "${index + 1}",
                                color: unselected == index
                                    ? Colors.white
                                    : Colors.black,
                                size: 18,
                              )),
                            ),
                          );
                        }),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 15,
              right: 20,
              left: 20,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    // margin: const EdgeInsets.only(top: 20),
                    width:70,
                    height: 70,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: AppColors.mainColor,width: 2.0),
                      color: Colors.white,
                    ),
                    child: Icon(Icons.favorite_border, color: AppColors.mainColor,),
                  ),
                  const SizedBox(width:20),
                  ResponsiveButton2(isResponsive: true, text: "Book Trip Now", width: double.maxFinite,)

                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
