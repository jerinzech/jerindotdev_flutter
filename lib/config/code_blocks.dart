import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:jerindotdev_flutter/config/palette.dart';
import 'package:url_launcher/url_launcher.dart';

import 'constants.dart';

final Uri githubURL = Uri.parse("https://github.com/jerinzech");
final Uri spotifyURL = Uri.parse(
    "https://open.spotify.com/user/8wvke3mlyxguidnu43nqife1z?si=5eb8da842cf14491");
final Uri twitterURL = Uri.parse("https://twitter.com/jerinzech");

final Uri linkedinURL =
    Uri.parse("https://www.linkedin.com/in/jerin-james-052867180");
final Uri emailmeURL =
    Uri.parse("mailto:jerinzdev@gmail.com?subject=News&body=New%20plugin");

// double width = MediaQuery.of(context).width;

Widget jerinAvatar = Container(
  child: Padding(
    padding: const EdgeInsets.all(50.0),
    child: Container(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(color: Colors.white, width: 5),
        color: AppColors.imageBG,
      ),
      // color: AppColors.imageBG,
      padding: const EdgeInsets.all(8.0),

      child: Image.asset(
        "lib/assets/images/jerin_avatar.png",
        // height: 300,
        // width: 300,
        // scale: 2.0,
      ),
    ),
  ),
);

Widget jerinSignature = Image.asset(
  "lib/assets/images/jerinjamessignature_white.png",
  width: 200.0,
  height: 100.0,
);

Widget iconRow = Row(
  mainAxisAlignment: MainAxisAlignment.center,
  crossAxisAlignment: CrossAxisAlignment.center,
  children: [
    // Spacer(),
    IconButton(
      onPressed: () {
        launchUrl(githubURL);
      },
      icon: const Icon(FontAwesomeIcons.github),
      iconSize: 24.0,
      color: Colors.white,
      autofocus: true,
    ),
    const SizedBox(
      width: 15.0,
    ),
    IconButton(
      onPressed: () {
        launchUrl(linkedinURL);
      },
      icon: const Icon(FontAwesomeIcons.linkedin),
      iconSize: 24.0,
      color: Colors.white,
      autofocus: true,
    ),
    const SizedBox(
      width: 15.0,
    ),
    IconButton(
      onPressed: () {
        launchUrl(twitterURL);
      },
      icon: const Icon(FontAwesomeIcons.twitter),
      iconSize: 24.0,
      color: Colors.white,
      autofocus: true,
    ),
    const SizedBox(
      width: 15.0,
    ),
    IconButton(
      onPressed: () {
        launchUrl(spotifyURL);
      },
      icon: const Icon(FontAwesomeIcons.spotify),
      iconSize: 24.0,
      color: Colors.white,
      autofocus: true,
    ),
    const SizedBox(
      width: 15.0,
    ),
    OutlinedButton(
        autofocus: true,
        style: OutlinedButton.styleFrom(
          backgroundColor: AppColors.darkModefade,
          padding: const EdgeInsets.fromLTRB(15.0, 15.0, 15.0, 15.0),
          shape: const StadiumBorder(),
        ),
        onPressed: () {
          launchUrl(emailmeURL);
        },
        child: Text(
          "Email me",
          style: robotoMonoStyle.copyWith(color: Colors.white, fontSize: 15),
        ))
  ],
);
