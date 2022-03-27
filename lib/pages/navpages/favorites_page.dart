import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_cubit/widgets/app_text2.dart';

class FavoritesPage extends StatelessWidget {
  const FavoritesPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: AppText2(text: "Favorites Page", color: Colors.black,),
    );
  }
}