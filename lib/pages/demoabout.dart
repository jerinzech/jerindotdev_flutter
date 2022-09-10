import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:jerindotdev_flutter/config/code_blocks.dart';
import 'package:jerindotdev_flutter/main.dart';
import 'package:url_launcher/url_launcher.dart';

import '../config/constants.dart';
import '../config/palette.dart';

class demoabout extends StatefulWidget {
  const demoabout({super.key});

  @override
  State<demoabout> createState() => _demoaboutState();
}

class _demoaboutState extends State<demoabout> {
  final Uri githubURL = Uri.parse("https://github.com/jerinzech");
  final Uri spotifyURL = Uri.parse(
      "https://open.spotify.com/user/8wvke3mlyxguidnu43nqife1z?si=5eb8da842cf14491");
  final Uri twitterURL = Uri.parse("https://twitter.com/jerinzech");

  final Uri linkedinURL =
      Uri.parse("https://www.linkedin.com/in/jerin-james-052867180");
  final Uri emailmeURL =
      Uri.parse("mailto:jerinzdev@gmail.com?subject=News&body=New%20plugin");
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      color: Colors.grey[900],
      child: Center(
        child: SizedBox(
          width: 0.8 * width,
          height: 0.8 * height,
          child: Container(
            // color: Colors.amber,
            child: SizedBox(
              width: 0.6 * width,
              height: height,
              child: Container(
                color: Colors.grey[900],
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Spacer(),
                      Center(
                        child: Image.asset(
                          "lib/assets/images/jerinjamessignature_white.png",
                          width: 0.3 * width,
                          height: 0.2 * height,
                          alignment: Alignment.bottomRight,
                          fit: BoxFit.none,
                        ),
                      ),
                      SizedBox(
                        width: 0.3 * width,
                        height: 0.6 * height,
                        child: Container(
                          color: Colors.grey[900],
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              // Spacer(),

                              Text(
                                "Front-End developer ",
                                style: poppinsStyle.copyWith(
                                    fontSize: 35,
                                    color: AppColors.darkModeText,
                                    fontWeight: FontWeight.bold),
                              ),
                              // Text(
                              //   "creating pixel-perfect,\nintuitive interfaces.",
                              //   style: poppinsStyle.copyWith(
                              //       fontSize: 35,
                              //       color: AppColors.darkModeText,
                              //       fontWeight: FontWeight.w600),
                              //   textAlign: TextAlign.end,
                              // ),
                              RichText(
                                text: TextSpan(
                                  // text: 'I’m experienced in ',
                                  style: poppinsStyle,
                                  children: const <TextSpan>[
                                    TextSpan(
                                        text: 'creating ',
                                        style: TextStyle(
                                          fontSize: 35,
                                          color: AppColors.darkModeText,
                                        )),
                                    TextSpan(
                                        text: 'pixel-perfect',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 35,
                                            color: AppColors.darkModeText,
                                            decoration:
                                                TextDecoration.underline,
                                            decorationColor: AppColors.imageBG,
                                            decorationThickness: 2)),
                                    TextSpan(
                                        text: '\nintuitive',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 35,
                                            color: AppColors.darkModeText,
                                            decoration:
                                                TextDecoration.underline,
                                            decorationColor: AppColors.imageBG,
                                            decorationThickness: 2)),
                                    TextSpan(
                                        text: ' interfaces.',
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 35,
                                          color: AppColors.darkModeText,
                                        )),
                                  ],
                                ),
                                textAlign: TextAlign.end,
                              ),
                              SizedBox(
                                height: 0.05 * height,
                                // width: width,
                              ),

                              RichText(
                                text: TextSpan(style: poppinsStyle, children: [
                                  TextSpan(
                                    text: "I'm ",
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                  TextSpan(
                                    text: "Jerin",
                                    style: TextStyle(
                                        color: AppColors.imageBG,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  TextSpan(
                                    text:
                                        ", a Bengaluru [India] based aspiring front-end developer. \nI specialize in building mobile and web based applications.",
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                ]),
                                textAlign: TextAlign.end,
                              ),
                              // Text(
                              //   "I'm Jerin, a Bengaluru [India] based aspiring front-end developer. \nI specialize in building mobile and web based applications.",
                              //   style: poppinsStyle.copyWith(
                              //       fontSize: 15,
                              //       color: Colors.grey,
                              //       fontWeight: FontWeight.w100),
                              //   textAlign: TextAlign.end,
                              // ),
                              SizedBox(
                                height: 0.01 * height,
                                // width: width,
                              ),
                              // Text(
                              //   "I’m experienced in Flutter & React. \nAlways open to collaborate where I can help design and build eye-pleasing user experiences. I dabble a bit on Figma too.",
                              //   style: poppinsStyle.copyWith(
                              //       fontSize: 15,
                              //       color: Colors.grey,
                              //       fontWeight: FontWeight.w100),
                              //   textAlign: TextAlign.end,
                              // ),
                              RichText(
                                text: TextSpan(
                                  // text: 'I’m experienced in ',
                                  style: poppinsStyle,
                                  children: const <TextSpan>[
                                    TextSpan(
                                        text: ' I’m experienced in ',
                                        style: TextStyle(color: Colors.grey)),
                                    TextSpan(
                                        text: 'Flutter',
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.blue,
                                        )),
                                    TextSpan(
                                        text: ' & ',
                                        style: TextStyle(
                                          color: Colors.grey,
                                        )),
                                    TextSpan(
                                        text: 'React.',
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.lightBlue,
                                        )),
                                    TextSpan(
                                        text:
                                            '\nAlways open to collaborate where I can help design and build eye-pleasing user experiences. I dabble a bit on Figma too.',
                                        style: TextStyle(color: Colors.grey)),
                                  ],
                                ),
                                textAlign: TextAlign.end,
                              ),
                              SizedBox(
                                height: 0.05 * height,
                                // width: width,
                              ),
                              SizedBox(
                                // width: 0.4 * width,
                                // height: 0.1 * height,
                                child: Container(
                                  color: Colors.grey[900],
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      // Spacer(),
                                      IconButton(
                                        onPressed: () {
                                          launchUrl(githubURL);
                                        },
                                        icon:
                                            const Icon(FontAwesomeIcons.github),
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
                                        icon: const Icon(
                                            FontAwesomeIcons.linkedin),
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
                                        icon: const Icon(
                                            FontAwesomeIcons.twitter),
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
                                        icon: const Icon(
                                            FontAwesomeIcons.spotify),
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
                                            backgroundColor:
                                                AppColors.darkModefade,
                                            padding: EdgeInsets.fromLTRB(
                                                15.0, 15.0, 15.0, 15.0),
                                            shape: StadiumBorder(),
                                          ),
                                          onPressed: () {
                                            launchUrl(emailmeURL);
                                          },
                                          child: Text(
                                            "Email me",
                                            style: robotoMonoStyle.copyWith(
                                                color: Colors.white,
                                                fontSize: 15),
                                          ))
                                    ],
                                  ),
                                ),
                              )
                              // Spacer(),
                            ],
                          ),
                        ),
                      ),
                      Spacer(),
                    ],
                  ),
                  Container(
                    color: Colors.grey[900],
                    child: SizedBox(
                      width: 0.3 * width,
                      height: 0.6 * height,
                      child: Container(
                        child: SizedBox(
                          width: 0.1 * width,
                          height: 0.1 * width,
                          child: Padding(
                            padding: const EdgeInsets.all(100.0),
                            child: Container(
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border:
                                      Border.all(color: Colors.white, width: 3),
                                  color: AppColors.imageBG),
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
                        ),
                      ),
                    ),
                  ),
                  // Spacer(),
                ]),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
