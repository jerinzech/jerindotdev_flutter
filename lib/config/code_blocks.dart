import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:jerindotdev_flutter/config/palette.dart';
import 'package:url_launcher/url_launcher.dart';

import 'constants.dart';

final Uri githubURL = Uri.parse("https://github.com/jerinzech");
final Uri spotifyURL = Uri.parse(
    "https://open.spotify.com/user/8wvke3mlyxguidnu43nqife1z?si=5eb8da842cf14491");
final Uri twitterURL = Uri.parse("https://twitter.com/jerinzech");
final Uri resumeLink = Uri.parse(
    "https://github.com/jerinzech/jerinzech.github.io/blob/7abaaa7b9414056a88e3fdf41dc3165dcaa7b5d4/assets/Jerin_James.pdf");

final Uri linkedinURL =
    Uri.parse("https://www.linkedin.com/in/jerin-james-052867180");
final Uri emailmeURL =
    Uri.parse("mailto:jerinzdev@gmail.com?subject=News&body=New%20plugin");

final Uri resumePath = Uri.file("./lib/screens/Jerin_James.pdf");

// double width = MediaQuery.of(context).width;

Widget jerinAvatar = Container(
  child: Padding(
    padding: const EdgeInsets.all(10.0),
    child: Container(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(color: Colors.white, width: 5),
        color: Colors.grey[900],
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

Widget iconList = Column(
  mainAxisAlignment: MainAxisAlignment.center,
  crossAxisAlignment: CrossAxisAlignment.center,
  children: [
    // Spacer(),
    // const SizedBox(
    //   height: 50.0,
    // ),
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
      height: 40.0,
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
      height: 40.0,
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
      height: 40.0,
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
      height: 40.0,
    ),
    IconButton(
      onPressed: () {
        launchUrl(emailmeURL);
      },
      icon: const Icon(Icons.email),
      iconSize: 24.0,
      color: Colors.white,
      autofocus: true,
    ),
    // const SizedBox(
    //   height: 50.0,
    // ),
    // Spacer(),
    // SizedBox(height: 60.0),
  ],
);
Widget iconListMobile = Column(
  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  crossAxisAlignment: CrossAxisAlignment.center,
  children: [
    Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        IconButton(
          onPressed: () {
            launchUrl(githubURL);
          },
          icon: const Icon(FontAwesomeIcons.github),
          iconSize: 24.0,
          color: Colors.white,
          autofocus: true,
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
        IconButton(
          onPressed: () {
            launchUrl(twitterURL);
          },
          icon: const Icon(FontAwesomeIcons.twitter),
          iconSize: 24.0,
          color: Colors.white,
          autofocus: true,
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
      ],
    ),
    Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Spacer(),
        OutlinedButton(
          autofocus: true,
          style: OutlinedButton.styleFrom(
            padding: const EdgeInsets.fromLTRB(20.0, 17.0, 20.0, 17.0),
            // elevation: 20.0,
            side: const BorderSide(color: Colors.transparent),
            backgroundColor: AppColors.darkModefade,
            shape: const StadiumBorder(),
            // backgroundColor: Colors.cyanAccent,
          ),
          onPressed: () {
            launchUrl(emailmeURL);
          },
          child: Text(
            "email me",
            style: montserratStyle.copyWith(
                color: Colors.white, fontSize: 14, fontWeight: FontWeight.bold),
          ),
        ),
        const Spacer(),
        OutlinedButton(
          autofocus: true,
          style: OutlinedButton.styleFrom(
            padding: const EdgeInsets.fromLTRB(20.0, 17.0, 20.0, 17.0),
            // elevation: 20.0,
            side: const BorderSide(color: Colors.transparent),
            backgroundColor: AppColors.darkModefade,
            shape: const StadiumBorder(),
            // backgroundColor: Colors.cyanAccent,
          ),
          onPressed: () {
            launchUrl(resumeLink);
          },
          child: Text(
            "resume",
            style: montserratStyle.copyWith(
                color: Colors.white, fontSize: 14, fontWeight: FontWeight.bold),
          ),
        ),
        const Spacer(),
      ],
    ),
  ],
);
