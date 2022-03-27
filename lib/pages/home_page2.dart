import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_cubit/misc/colors.dart';
import 'package:flutter_cubit/widgets/app_large_text.dart';
import 'package:flutter_cubit/widgets/app_text.dart';

class HomePage2 extends StatefulWidget {
  const HomePage2({Key? key}) : super(key: key);

  @override
  State<HomePage2> createState() => _HomePage2State();
}

class _HomePage2State extends State<HomePage2> with TickerProviderStateMixin {
  Map images = {
    'Balloning': 'balloning.png',
    'Hiking': 'hiking.png',
    'Snorkling': 'snorkling.png',
    'Kayaking': 'kayaking.png',
  };
  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 3, vsync: this);
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.only(left: 20, right: 20, top: 70),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(Icons.menu),
                Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Container(
            margin: const EdgeInsets.only(left: 20),
            child: AppLargeText(text: "Discover"),
          ),
          const SizedBox(
            height: 15,
          ),
          Container(
                // margin: const EdgeInsets.only(left: 40),
            child: Align(
              alignment: Alignment.center,
              child: TabBar(
                isScrollable: true,
                labelColor: Colors.black,
                unselectedLabelColor: Colors.black54,
                // labelPadding: kTabLabelPadding,
                indicatorSize: TabBarIndicatorSize.label,
                controller: _tabController,
                tabs: const [
                  Tab(
                    text: "Places",
                  ),
                  Tab(
                    text: "Inspiration",
                  ),
                  Tab(
                    text: "Emotions",
                  )
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            height: 270,
            width: double.maxFinite,
            margin: const EdgeInsets.only(left: 5),
            child: TabBarView(
              controller: _tabController,
              children: [
                ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 3,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: const EdgeInsets.only(right: 10),
                      height: 250,
                      width: 150,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: const DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage("img/mountain.jpeg"),
                          ),
                          ),
                    );
                  },
                ),
                AppText(text: "Hi"),
                AppText(text: "There"),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
              margin: const EdgeInsets.only(left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AppLargeText(
                    text: "Explore",
                    color: Colors.black87,
                    size: 23,
                  ),
                  AppText(
                    text: "See more",
                    color: AppColors.mainColor,
                  ),
                ],
              )),
          const SizedBox(
            height: 20,
          ),
          Container(
            width: double.maxFinite,
            height: 100,
            margin: const EdgeInsets.only(left: 20),
            child: ListView.builder(
              itemCount: images.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Container(
                      width: 70,
                      height: 70,
                      margin: const EdgeInsets.only(right: 10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage(
                                  "img/" + images.values.elementAt(index)))),
                    ),
                    Container(
                      margin: const EdgeInsets.only(right: 10),
                      child: AppText(
                        text: images.keys.elementAt(index),
                      ),
                    )
                  ],
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
