import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_cubit/misc/colors.dart';
import 'package:flutter_cubit/widgets/app_text1.dart';
import 'package:flutter_cubit/widgets/app_text_large1.dart';

class HomePage1 extends StatefulWidget {
  const HomePage1({Key? key}) : super(key: key);

  @override
  State<HomePage1> createState() => _HomePage1State();
}

class _HomePage1State extends State<HomePage1> with TickerProviderStateMixin {
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
            margin: const EdgeInsets.only(left: 20, top: 60),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Icon(
                  Icons.menu,
                  color: Colors.black87,
                ),
                Container(
                  margin: const EdgeInsets.only(right: 20),
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey,
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Container(
            margin: const EdgeInsets.only(left: 20),
            child: AppLargeText1(text: "Discover"),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            child: Align(
              alignment: Alignment.centerLeft,
              child: TabBar(
                labelPadding: const EdgeInsets.only(right: 40, left: 40),
                labelColor: Colors.black,
                controller: _tabController,
                isScrollable: true,
                indicatorSize: TabBarIndicatorSize.label,
                // indicator: CircularTabIndicator1(color: AppColors.mainColor, radius: 4),
                tabs: const [
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
          Container(
            height: 270,
            width: double.maxFinite,
            child: TabBarView(
              controller: _tabController,
              children: [
                Container(
                  margin: const EdgeInsets.only(left: 5, top: 10),
                  child: ListView.builder(
                    itemCount: 4,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        margin: const EdgeInsets.only(right: 10),
                        width: 200,
                        height: 270,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: const DecorationImage(
                              image: AssetImage("img/mountain.jpeg"),
                              fit: BoxFit.cover),
                        ),
                      );
                    },
                  ),
                ),
                Text("hi"),
                Text("there"),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            margin: const EdgeInsets.only(left: 20, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppLargeText1(
                  text: "Explore",
                  size: 22,
                ),
                AppText1(
                  text: "See more",
                  color: AppColors.mainColor,
                )
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            margin: const EdgeInsets.only(left: 20),
            height: 110,
            width: double.maxFinite,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: images.length,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    margin: const EdgeInsets.only(right: 15),
                    child: Column(
                      children: [
                        Container(
                          height: 80,
                          width: 80,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                  image: AssetImage('img/' +
                                      images.values.elementAt(index)))),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        AppText1(text: images.keys.elementAt(index))
                      ],
                    ),
                  );
                }),
          ),
        ],
      ),
    );
  }
}

class CircularTabIndicator1 extends Decoration {
  final Color color;
  double radius;
  CircularTabIndicator1({Key? key, required this.color, required this.radius});

  @override
  BoxPainter createBoxPainter([VoidCallback? onChanged]) {
    // TODO: implement createBoxPainter
    return _CircularPainter1(color: color, radius: radius);
  }
}

class _CircularPainter1 extends BoxPainter {
  final Color color;
  double radius;
  _CircularPainter1({required this.color, required this.radius});
  @override
  void paint(Canvas canvas, Offset offset, ImageConfiguration configuration) {
    // TODO: implement paint
    Paint _paint = Paint();
    _paint.color = color;
    _paint.isAntiAlias = true;
    final Offset circleOffset = Offset(
        configuration.size!.width / 2 - radius / 2,
        configuration.size!.height - radius);
    canvas.drawCircle(offset + circleOffset, radius, _paint);
  }
}
