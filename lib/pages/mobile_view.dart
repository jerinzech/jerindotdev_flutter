import 'package:flutter/material.dart';
import 'package:jerindotdev_flutter/pages/appbar.dart';

import 'about.dart';
import 'mobile_NavBar.dart';

class MobileView extends StatefulWidget {
  const MobileView({super.key});

  @override
  State<MobileView> createState() => _MobileViewState();
}

class _MobileViewState extends State<MobileView> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size(width, 0.07 * height), child: MobileNavBar()),
      body: MobileAbout(),
      bottomNavigationBar: customBottomBar(),
    );
  }
}
