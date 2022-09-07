import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:jerindotdev_flutter/config/constants.dart';
import 'package:url_launcher/url_launcher.dart';
import '../config/palette.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  bool home_ = true;

  final Uri homeURL = Uri.parse("");
  final Uri resumePath = Uri.file("./lib/resources/Jerin_James.pdf");

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
        color: Colors.grey[900],
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              // width: 0.15 * width,
              height: height,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    "lib/assets/images/jerinjamessignature_white.png",
                    width: 200.0,
                    height: 70.0,
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 0.5 * width,
              height: height,
            ),
            Spacer(),
            SizedBox(
              // width: 0.3 * width,
              height: height,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  OutlinedButton(
                    autofocus: true,
                    style: OutlinedButton.styleFrom(
                      padding:
                          const EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 20.0),
                      // elevation: 20.0,
                      side: const BorderSide(color: Colors.transparent),
                      // backgroundColor: Colors.amberAccent,
                    ),
                    onPressed: () {
                      print("button was clicked");
                    },
                    child: Text(
                      "Home",
                      style: robotoMonoStyle.copyWith(
                          color: Colors.white, fontSize: 16),
                    ),
                  ),
                  OutlinedButton(
                    autofocus: true,
                    style: OutlinedButton.styleFrom(
                      padding: EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 20.0),
                      // elevation: 20.0,
                      side: BorderSide(color: Colors.transparent),
                      // backgroundColor: Colors.blueGrey,
                    ),
                    onPressed: () {
                      print("button was clicked");
                    },
                    child: Text(
                      "About",
                      style: robotoMonoStyle.copyWith(
                          color: Colors.white, fontSize: 16),
                    ),
                  ),
                  OutlinedButton(
                    autofocus: true,
                    style: OutlinedButton.styleFrom(
                      padding: EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 20.0),
                      // elevation: 20.0,
                      side: BorderSide(color: Colors.transparent),
                      // backgroundColor: Colors.cyanAccent,
                    ),
                    onPressed: () {
                      print("button was clicked");
                    },
                    child: Text(
                      "Projects",
                      style: robotoMonoStyle.copyWith(
                          color: Colors.white, fontSize: 16),
                    ),
                  ),
                  OutlinedButton(
                    autofocus: true,
                    style: OutlinedButton.styleFrom(
                      padding: EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 20.0),
                      // elevation: 20.0,
                      side: BorderSide(color: Colors.transparent),
                      // backgroundColor: Colors.cyanAccent,
                    ),
                    onPressed: () {
                      launchUrl(resumePath);
                    },
                    child: Text(
                      "Resume",
                      style: robotoMonoStyle.copyWith(
                          color: Colors.yellowAccent, fontSize: 16),
                    ),
                  ),
                  SizedBox(
                    width: 40.0,
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
