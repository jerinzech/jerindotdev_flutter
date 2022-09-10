import 'package:flutter/material.dart';
import 'package:jerindotdev_flutter/config/palette.dart';
import 'package:jerindotdev_flutter/pages/desktop_view.dart';
import 'package:jerindotdev_flutter/pages/homepage.dart';
import 'package:jerindotdev_flutter/pages/mobile_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // theme: ThemeData(appBarTheme: AppBarTheme(color: Colors.yellow)),
      home: HomePage(
        MobileView: MobileView(),
        DesktopView: DesktopView(),
      ),
    );
  }
}
