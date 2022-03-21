import 'package:flutter/cupertino.dart';

class MyPage extends StatelessWidget {
  const MyPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: const Text('My Page'),
      ),
    );
  }
}