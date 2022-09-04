import 'package:flutter/material.dart';

import 'top_navbar.dart';
import 'aboutme.dart';
import 'listview_projects.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            width: width,
            height: 0.07 * height,
            child: const NavBar(),
          ),
          SizedBox(
            width: width,
            height: 0.73 * height,
            child: AboutMe(),
          ),
          SizedBox(
            width: width,
            height: 0.2 * height,
            child: BlogsAndRelated(),
          ),
        ],
      ),
    );
  }
}
