import 'package:flutter/material.dart';
import 'package:jerindotdev_flutter/pages/about.dart';
import 'package:jerindotdev_flutter/pages/top_navbar.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    // home(context);

    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: PreferredSize(
        child: NavBar(),
        preferredSize: Size(width, 0.07 * height),
      ),
      body: AboutMe(),
    );
  }
}

_LandingPage(context) {
  home(context) {
    Navigator.of(context).pushNamed('/');
  }
}
