import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_cubit/misc/colors.dart';
import 'package:flutter_cubit/widgets/app_large_text.dart';
import 'package:flutter_cubit/widgets/app_text1.dart';

class HomePage3 extends StatefulWidget {
  const HomePage3({Key? key}) : super(key: key);

  @override
  State<HomePage3> createState() => _HomePage3State();
}

class _HomePage3State extends State<HomePage3> with TickerProviderStateMixin {
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
            margin: const EdgeInsets.only(top: 50, right: 20, left: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  Icons.menu,
                  color: Colors.black,
                ),
                Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.grey),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          Container(
              margin: const EdgeInsets.only(left: 20),
              child: AppLargeText(text: "Discover")),
          const SizedBox(
            height: 25,
          ),
          Container(
            child: Align(
              alignment: Alignment.centerLeft,
              child: TabBar(
                controller: _tabController,
                labelColor: Colors.black,
                labelPadding: const EdgeInsets.only(left: 20, right: 20),
                unselectedLabelColor: Colors.black54,
                indicatorSize: TabBarIndicatorSize.label,
                indicator: CircleTabIndicator2(color: AppColors.mainColor, radius: 4),
                tabs: [
                  Tab(
                    text: "Places",
                  ),
                  Tab(
                    text: "Inspiration",
                  ),
                  Tab(
                    text: "Emotions",
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            margin: const EdgeInsets.only(left: 5),
            height: 270,
            width: double.maxFinite,
            child: TabBarView(
              controller: _tabController,
              children: [
                ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 3,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: const EdgeInsets.only(right: 10),
                      width: 200,
                      height: 250,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage('img/mountain.jpeg'),
                          )),
                    );
                  },
                ),
                AppText1(text: "Hi"),
                AppText1(text: "There"),
              ],
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Container(
            margin: const EdgeInsets.only(left: 20, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppLargeText(
                  text: "Explore",
                  size: 23,
                ),
                AppText1(
                  text: "See more",
                  color: AppColors.mainColor,
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 20, top: 20),
            height: 120,
            width: double.maxFinite,
            child: ListView.builder(
              itemCount: images.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Container(
            margin: const EdgeInsets.only(right: 30),

                  child: Column(
                    children: [
                      Container(
                        height: 70,
                        width: 70,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage("img/"+images.values.elementAt(index))
                          )
                        ),
                      ),
                      AppText1(text: images.keys.elementAt(index))
                    ],
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}

class CircleTabIndicator2 extends Decoration{
  Color color;
  double radius;
  CircleTabIndicator2({
    required this.color,
    required this.radius,
  });
  @override
  BoxPainter createBoxPainter([VoidCallback? onChanged]) {
    // TODO: implement createBoxPainter
    return CirclePainter2(color: color, radius:radius);
  }

}

class CirclePainter2 extends BoxPainter{
  Color color;
  double radius;
  CirclePainter2({
    required this.color,
    required this.radius,
  });
  @override
  void paint(Canvas canvas, Offset offset, ImageConfiguration configuration) {
    // TODO: implement paint
    Paint _paint = Paint();
    _paint.color = color;
    Offset _circleOffset = Offset(configuration.size!.width/2, configuration.size!.height-radius);
    canvas.drawCircle(offset+_circleOffset, radius, _paint);
  }
}