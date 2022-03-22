import 'package:flutter/material.dart';
import 'package:flutter_cubit/misc/colors.dart';
import 'package:flutter_cubit/widgets/app_buttons.dart';
import 'package:flutter_cubit/widgets/app_large_text.dart';
import 'package:flutter_cubit/widgets/app_text.dart';
import 'package:flutter_cubit/widgets/responsive_button.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  int gottenStars = 4;
  int selectedIndex = -1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        child: Stack(
          children: [
            Positioned(
                left: 0,
                right: 0,
                child: Container(
                  width: double.maxFinite,
                  height: 350,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("img/mountain.jpeg"),
                        fit: BoxFit.cover),
                  ),
                )),
            Positioned(
              left: 20,
              top: 50,
              child: Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.menu_rounded),
                    color: Colors.white,
                  ),
                  // Expanded(child: SizedBox()),
                  // IconButton(onPressed: (){}, icon: Icon(Icons.menu))
                ],
              ),
            ),
            Positioned(
              top: 250,
              child: Container(
                padding: const EdgeInsets.only(top: 25, left: 20, right: 20),
                width: MediaQuery.of(context).size.width,
                height: 500,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40),
                    )),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AppLargeText(
                          text: "Yosemite",
                          color: Colors.black87,
                        ),
                        AppLargeText(text: "\$ 250", color: AppColors.mainColor)
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.location_on,
                          color: AppColors.mainColor,
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        AppText(
                          text: "USA, California",
                          color: AppColors.textColor1,
                        )
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
                              color: index < gottenStars
                                  ? AppColors.starColor
                                  : AppColors.textColor2,
                            );
                          }),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        AppText(
                          text: "(4.0)",
                          color: AppColors.textColor2,
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    AppLargeText(
                      text: "People",
                      size: 20,
                      color: Colors.black.withOpacity(0.8),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    AppText(
                      text: "Number of your people in your group:",
                      color: AppColors.textColor1,
                    ),
                    Wrap(
                      children: List.generate(5, (index) {
                        return InkWell(
                          onTap: () {
                            setState(() {
                              selectedIndex = index;
                            });
                          },
                          child: Container(
                            margin: const EdgeInsets.only(right: 10, top: 10),
                            child: AppButtons(
                                // icon: Icons.favorite_border,
                                // isIcon: true,
                                color: selectedIndex == index
                                    ? Colors.white
                                    : Colors.black,
                                text: (index + 1).toString(),
                                backgroundColor: selectedIndex == index
                                    ? Colors.black87
                                    : AppColors.buttonBackground,
                                size: 55,
                                borderColor: AppColors.buttonBackground),
                          ),
                        );
                      }),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    AppLargeText(
                      text: "Description",
                      size: 20,
                      color: Colors.black.withOpacity(0.8),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    AppText(
                      text:
                          "Yosemite National Park is located in central Sierra Nevada in the USA state of California. It is located near the wild protected areas.",
                      color: AppColors.textColor1,
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
                bottom: 15,
                left: 20,
                right: 20,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AppButtons(
                      color: AppColors.textColor1,
                      backgroundColor: Colors.white,
                      size: 60,
                      borderColor: AppColors.textColor1,
                      isIcon: true,
                      icon: Icons.favorite_border,
                    ),
                    const SizedBox(width: 20,),
                    ResponsiveButton(
                      isResponsive: true,
                      text: "Book Trip Now",
                    )
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
