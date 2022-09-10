import 'package:flutter/material.dart';

import 'desktop_view.dart';
import 'mobile_view.dart';

class HomePage extends StatefulWidget {
  final Widget MobileView;
  final Widget DesktopView;

  const HomePage({
    super.key,
    required this.MobileView,
    required this.DesktopView,
  });

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    // double height = MediaQuery.of(context).size.height;
    // double width = MediaQuery.of(context).size.width;
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < 1208) {
          return MobileView();
        } else {
          return DesktopView();
        }
      },
    );
  }
}
