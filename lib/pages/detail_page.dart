import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_cubit/cubit/app_cubit_states.dart';
import 'package:flutter_cubit/cubit/app_cubits.dart';
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
  int gottenStars = 3;
  int selectedIndex = -1;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppCubits, CubitStates>(
      builder: (context, state) {
        DetailState detail = state as DetailState;
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
                            // image: AssetImage("img/mountain.jpeg"),
                            image: NetworkImage("http://mark.bslmeiyu.com/uploads/"+detail.place.img),
                            fit: BoxFit.cover),
                      ),
                    )),
                Positioned(
                  left: 20,
                  top: 50,
                  child: Row(
                    children: [
                      IconButton(
                        onPressed: () {
                          BlocProvider.of<AppCubits>(context).goHome();
                        },
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
                    padding:
                        const EdgeInsets.only(top: 25, left: 20, right: 20),
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
                              text: detail.place.name,
                              color: Colors.black87,
                            ),
                            AppLargeText(
                                text: "\$ "+detail.place.price.toString(), color: AppColors.mainColor)
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
                              text: detail.place.location,
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
                                  color: index < detail.place.stars
                                      ? AppColors.starColor
                                      : AppColors.textColor2,
                                );
                              }),
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            AppText(
                              text: "(${detail.place.stars}.0)",
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
                                margin:
                                    const EdgeInsets.only(right: 10, top: 10),
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
                              detail.place.description,
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
                        const SizedBox(
                          width: 20,
                        ),
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
        ;
      },
    );
  }
}
