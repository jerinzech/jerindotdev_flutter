import 'package:flutter/material.dart';
import 'package:jerindotdev_flutter/config/constants.dart';
import 'package:jerindotdev_flutter/config/palette.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    // double height = MediaQuery.of(context).size.height;
    // double width = MediaQuery.of(context).size.width;
    return Expanded(
      child: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints viewportConstraints) {
          return SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Container(
                  color: Colors.grey[900],
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset(
                    "lib/assets/images/jerin_avatar.png",
                    height: 500,
                    width: 500,
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
