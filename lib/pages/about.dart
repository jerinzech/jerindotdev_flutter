import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:jerindotdev_flutter/config/code_blocks.dart';
import 'package:jerindotdev_flutter/main.dart';
import 'package:url_launcher/url_launcher.dart';

import '../config/constants.dart';
import '../config/palette.dart';

class AboutMe extends StatefulWidget {
  const AboutMe({super.key});

  @override
  State<AboutMe> createState() => _AboutMeState();
}

class _AboutMeState extends State<AboutMe> {
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
                                  child: iconRow,
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
                          child: jerinAvatar,
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

class MobileAbout extends StatefulWidget {
  const MobileAbout({super.key});

  @override
  State<MobileAbout> createState() => _MobileAboutState();
}

class _MobileAboutState extends State<MobileAbout> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Center(
      child: Expanded(
        child: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints viewportConstraints) {
            return SingleChildScrollView(
              child: Container(
                width: width,
                color: Colors.grey[900],
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      color: Colors.grey[900],
                      padding: const EdgeInsets.all(8.0),
                      width: 0.8 * width,
                      height: 0.5 * height,
                      child: Container(child: jerinAvatar),
                      alignment: Alignment.bottomCenter,
                    ),
                    Container(
                      color: Colors.grey[900],
                      padding: const EdgeInsets.all(8.0),
                      width: 0.8 * width,
                      height: 0.5 * height,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "Front-End developer ",
                            style: poppinsStyle.copyWith(
                                fontSize: 28,
                                color: AppColors.darkModeText,
                                fontWeight: FontWeight.bold),
                          ),
                          RichText(
                            text: TextSpan(
                              style: poppinsStyle,
                              children: const <TextSpan>[
                                TextSpan(
                                    text: 'creating ',
                                    style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold,
                                      color: AppColors.darkModeText,
                                    )),
                                TextSpan(
                                    text: 'pixel-perfect',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 25,
                                        color: AppColors.darkModeText,
                                        decoration: TextDecoration.underline,
                                        decorationColor: AppColors.imageBG,
                                        decorationThickness: 2)),
                                TextSpan(
                                    text: '\nintuitive',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 25,
                                        color: AppColors.darkModeText,
                                        decoration: TextDecoration.underline,
                                        decorationColor: AppColors.imageBG,
                                        decorationThickness: 2)),
                                TextSpan(
                                    text: ' interfaces.',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 25,
                                      color: AppColors.darkModeText,
                                    )),
                              ],
                            ),
                            textAlign: TextAlign.center,
                          ),
                          SizedBox(
                            height: 0.05 * height,
                            // width: width,
                          ),
                          RichText(
                            text: TextSpan(style: poppinsStyle, children: [
                              TextSpan(
                                text: "I'm ",
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontWeight: FontWeight.w700),
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
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontWeight: FontWeight.w700),
                              ),
                            ]),
                            textAlign: TextAlign.center,
                          ),
                          SizedBox(
                            height: 0.03 * height,
                          ),
                          RichText(
                            text: TextSpan(
                              // text: 'I’m experienced in ',
                              style: poppinsStyle,
                              children: const <TextSpan>[
                                TextSpan(
                                    text: ' I’m experienced in ',
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontWeight: FontWeight.w700)),
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
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontWeight: FontWeight.w700)),
                              ],
                            ),
                            textAlign: TextAlign.center,
                          ),
                          SizedBox(height: 0.05 * height, width: width),
                          Center(child: iconRow),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}