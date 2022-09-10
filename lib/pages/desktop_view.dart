import 'package:flutter/material.dart';
import 'package:jerindotdev_flutter/pages/about.dart';
import 'package:jerindotdev_flutter/pages/appbar.dart';
import 'package:jerindotdev_flutter/config/palette.dart';

import 'demoabout.dart';

class DesktopView extends StatefulWidget {
  const DesktopView({super.key});

  @override
  State<DesktopView> createState() => _DesktopViewState();
}

class _DesktopViewState extends State<DesktopView> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: PreferredSize(
        child: WebNavBar(),
        preferredSize: Size(width, 0.07 * height),
      ),
      body: demoabout(),
    );
  }
}
