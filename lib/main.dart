import 'package:flutter/material.dart';
import 'package:jerindotdev_flutter/screens/homepage.dart';
import 'screens/desktop_view.dart';
import 'screens/mobile_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

String title = "Jerin James";

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(backgroundColor: Colors.black),
      title: title,

      // theme: ThemeData(appBarTheme: AppBarTheme(color: Colors.yellow)),
      home: HomePage(
        MobileView: MobileView(),
        DesktopView: DesktopView(),
      ),
    );
  }
}
