import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:jerindotdev_flutter/config/constants.dart';
import '../config/palette.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  bool home_ = true;

  @override
  Widget build(BuildContext context) {
    return Container(
        color: AppColors.mainBlackBackground,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              child: OutlinedButton(
                onPressed: home(),
                child: const Text("home"),
              ),
            ),
            OutlinedButton(
              onPressed: home(),
              child: const Text("about"),
            ),
            OutlinedButton(
              onPressed: home(),
              child: const Text("projects"),
            )
          ],
        ));
  }
}

home() {
  return;
}
