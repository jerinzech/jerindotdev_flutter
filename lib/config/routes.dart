import 'package:flutter/material.dart';
import 'package:jerindotdev_flutter/pages/about.dart';
import 'package:jerindotdev_flutter/pages/homepage.dart';
import 'package:jerindotdev_flutter/pages/profile_page.dart';
import 'package:jerindotdev_flutter/pages/projects.dart';

class AppRoutes {
  static Route<dynamic>? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (context) => HomePage());
      case '/About':
        return MaterialPageRoute(builder: (context) => ProfilePage());
      case '/Projects':
        return MaterialPageRoute(builder: (context) => ProjectsVIew());
      default:
        return _errorRoute();
    }
  }
}

Route<dynamic>? _errorRoute() {
  return MaterialPageRoute(builder: (context) {
    return const Scaffold(body: Text("Oops wrong route"));
  });
}
