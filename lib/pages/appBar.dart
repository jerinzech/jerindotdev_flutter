import 'package:flutter/material.dart';
import 'package:jerindotdev_flutter/config/code_blocks.dart';
import 'package:jerindotdev_flutter/config/constants.dart';
import 'package:jerindotdev_flutter/config/palette.dart';
import 'package:url_launcher/url_launcher.dart';

class WebNavBar extends StatefulWidget {
  const WebNavBar({super.key});

  @override
  State<WebNavBar> createState() => _WebNavBarState();
}

class _WebNavBarState extends State<WebNavBar> {
  final Uri homeURL = Uri.parse("");
  final Uri resumePath = Uri.file("./lib/resources/Jerin_James.pdf");
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      width: width,
      color: Colors.grey[900],
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          //signature image

          //buttons
          // SizedBox(width: 0.2 * width, child: jerinSignature),

          SizedBox(
              width: width,
              height: 0.1 * height,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  OutlinedButton(
                    autofocus: true,
                    style: OutlinedButton.styleFrom(
                      padding: EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 20.0),
                      // elevation: 20.0,
                      side: BorderSide(color: Colors.transparent),
                      // backgroundColor: Colors.blueGrey,
                    ),
                    onPressed: () {
                      print("About button was clicked");
                      Navigator.of(context).pushNamed('/');
                    },
                    child: Text(
                      "about",
                      style: montserratStyle.copyWith(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.bold),
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
                      print("blogs button was clicked");
                      Navigator.of(context).pushNamed('/');
                    },
                    child: Text(
                      "blogs / projects",
                      style: montserratStyle.copyWith(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.bold),
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
                      "resume",
                      style: montserratStyle.copyWith(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              )),
          // SizedBox(width: 0.2 * width),
        ],
      ),
    );
  }
}

class MobileNavBar extends StatefulWidget {
  const MobileNavBar({super.key});

  @override
  State<MobileNavBar> createState() => _MobileNavBarState();
}

class _MobileNavBarState extends State<MobileNavBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[900],
      child: Center(child: jerinSignature),
    );
  }
}
