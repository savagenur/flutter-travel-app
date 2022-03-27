import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_cubit/pages/home_page.dart';
import 'package:flutter_cubit/pages/navpages/bar_item_page.dart';
import 'package:flutter_cubit/pages/navpages/my_page.dart';
import 'package:flutter_cubit/pages/navpages/search_page.dart';

import '../navpages/favorites_page.dart';

class MainPage2 extends StatefulWidget {
  const MainPage2({Key? key}) : super(key: key);

  @override
  State<MainPage2> createState() => _MainPage2State();
}

class _MainPage2State extends State<MainPage2> {
  List pages = [
    HomePage(),
    BarItemPage(),
    SearchPage(),
    FavoritesPage(),
    MyPage(),
  ];
  int currIndex = 0;
  void onTap(int index) {
    setState(() {
      currIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currIndex],
      backgroundColor: Colors.white,
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTap,
        currentIndex: currIndex,
        backgroundColor: Colors.white,
        // fixedColor: Colors.red,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.apps), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.bar_chart_outlined), label: 'Bar'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
          BottomNavigationBarItem(icon: Icon(Icons.favorite), label: "Favorites"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
        ],
      ),
    );
  }
}
