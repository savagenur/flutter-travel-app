import 'package:flutter/cupertino.dart';

class AppText2 extends StatelessWidget {
  final String text;
  final double size;
  final Color color;
  const AppText2({
    Key? key,
    required this.text,
    required this.color,
    this.size=15,
    }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontSize: size,
        
      ),
    );
  }
}
