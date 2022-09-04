import 'package:flutter/material.dart';
import 'package:jerindotdev_flutter/config/constants.dart';
import 'package:jerindotdev_flutter/config/palette.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';

class AboutMe extends StatefulWidget {
  const AboutMe({super.key});

  @override
  State<AboutMe> createState() => _AboutMeState();
}

class _AboutMeState extends State<AboutMe> {
  String githubURL = "https://docs.flutter.dev/search?q=button";

  launchURL(url) async {
    if (await canLaunchUrl(url)) {
      await launchURL(url);
    } else {
      throw "Could not launch url";
    }
    ;
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      color: Colors.grey[900],
      child: Row(
        children: [
          SizedBox(
            height: height,
            width: 0.3 * width,
          ),
          SizedBox(
            height: height,
            width: 0.4 * width,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Front-End developer",
                  style: robotoMonoStyle.copyWith(
                      fontSize: 35,
                      color: AppColors.darkModeText,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  "creating pixel-perfect, \nintuitive interfaces.",
                  style: robotoMonoStyle.copyWith(
                      fontSize: 35,
                      color: AppColors.darkModeText,
                      fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  height: 0.05 * height,
                  width: width,
                ),
                Text(
                  "I'm Jerin, a Bengaluru [India] based aspiring front-end developer. I specialize in building mobile and web based applications.",
                  style: robotoMonoStyle.copyWith(
                      fontSize: 15,
                      color: Colors.grey,
                      fontWeight: FontWeight.w100),
                ),
                SizedBox(
                  height: 0.03 * height,
                  width: width,
                ),
                Text(
                  "I’m experienced in Flutter and React. I’m always open to opportunities where I can help design and build eye-pleasing user experiences. I dabble a bit on Figma too.",
                  style: robotoMonoStyle.copyWith(
                      fontSize: 15,
                      color: Colors.grey,
                      fontWeight: FontWeight.w100),
                ),
                SizedBox(
                  height: 0.07 * height,
                  width: width,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    IconButton(
                      onPressed: () {
                        launchURL(githubURL);
                      },
                      icon: const Icon(FontAwesomeIcons.github),
                      iconSize: 24.0,
                      color: Colors.white,
                      autofocus: true,
                    ),
                    const SizedBox(
                      width: 10.0,
                    ),
                    IconButton(
                      onPressed: () {
                        print("button was clicked");
                      },
                      icon: const Icon(FontAwesomeIcons.twitter),
                      iconSize: 24.0,
                      color: Colors.white,
                      autofocus: true,
                    ),
                    const SizedBox(
                      width: 10.0,
                    ),
                    IconButton(
                      onPressed: () {
                        print("button was clicked");
                      },
                      icon: const Icon(FontAwesomeIcons.spotify),
                      iconSize: 24.0,
                      color: Colors.white,
                      autofocus: true,
                    ),
                    const SizedBox(
                      width: 30.0,
                    ),
                    OutlinedButton(
                        autofocus: true,
                        style: OutlinedButton.styleFrom(
                          backgroundColor: AppColors.darkModefade,
                          padding: EdgeInsets.fromLTRB(15.0, 15.0, 15.0, 15.0),
                          shape: StadiumBorder(),
                        ),
                        onPressed: () {
                          print("button was clicked");
                        },
                        child: Text(
                          "Email me",
                          style: robotoMonoStyle.copyWith(
                              color: Colors.white, fontSize: 15),
                        ))
                  ],
                ),
                const SizedBox(
                  height: 30.0,
                ),
              ],
            ),
          ),
          SizedBox(
            height: height,
            width: 0.3 * width,
          ),
        ],
      ),
    );
  }
}
