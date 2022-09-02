import 'package:flutter/material.dart';

import 'top_navbar.dart';
import 'aboutme.dart';
import 'listview_projects.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        SizedBox(
          width: width,
          height: 0.1 * height,
          child: const NavBar(),
        ),
        SizedBox(
          width: width,
          height: .7 * height,
          child: AboutMe(),
        ),
        SizedBox(
          width: width,
          height: 0.2 * height,
          child: BlogsAndRelated(),
        ),
      ],
    );
  }
}
