import 'package:flutter/material.dart';

class customBottomBar extends StatefulWidget {
  const customBottomBar({super.key});

  @override
  State<customBottomBar> createState() => _customBottomBarState();
}

class _customBottomBarState extends State<customBottomBar> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      height: 0.07 * height,
      width: width,
      color: Colors.green,
    );
  }
}
