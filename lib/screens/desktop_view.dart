import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../config/code_blocks.dart';
import '../config/constants.dart';
import '../config/palette.dart';

final Uri homeURL = Uri.parse("");
final Uri resumePath = Uri.file("./lib/assets/Jerin_James.pdf");

int _selectedIndex = 0;

class DesktopView extends StatefulWidget {
  const DesktopView({super.key});

  @override
  State<DesktopView> createState() => _DesktopViewState();
}

class _DesktopViewState extends State<DesktopView> {
//

  final List<Widget> _deskPages = [AboutMe(), blogsView()];

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(width, 65.0),
        child: _DesktopAppBar(),
      ),
      // body: _deskPages[_selectedIndex],
      body: AboutMe(),
      bottomNavigationBar: _desktopBottomBar(),
    );
  }
}

class _desktopBottomBar extends StatelessWidget {
  const _desktopBottomBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: SizedBox(
        height: 65.0,
        child: Center(
          child: Text(
            "<Made using Flutter/>",
            style: robotoMonoStyle.copyWith(
                color: Colors.white,
                fontSize: 10,
                fontWeight: FontWeight.normal),
          ),
        ),
      ),
    );
  }
}

class _DesktopAppBar extends StatefulWidget {
  const _DesktopAppBar({super.key});

  @override
  State<_DesktopAppBar> createState() => __DesktopAppBarState();
}

class __DesktopAppBarState extends State<_DesktopAppBar> {
  @override
  Widget build(BuildContext context) {
    // _NavigateAppBar(int index) {
    //   setState(() {
    //     _selectedIndex = index;
    //   });
    // }

    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Container(
      width: width,
      height: height,
      color: Colors.black,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              child: jerinSignature,
            ),
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.center,
            //   children: [
            //     OutlinedButton(
            //       autofocus: true,
            //       style: OutlinedButton.styleFrom(
            //           padding:
            //               const EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 20.0),
            //           // elevation: 20.0,
            //           side: const BorderSide(color: Colors.transparent),
            //           // elevation: ,
            //           backgroundColor:
            //               _selectedIndex == 0 ? Colors.white : Colors.black),
            //       onPressed: () {
            //         print("About button was clicked");
            //         _NavigateAppBar(0);
            //       },
            //       child: Text(
            //         "home",
            //         style: montserratStyle.copyWith(
            //             color:
            //                 _selectedIndex == 0 ? Colors.black : Colors.white,
            //             fontSize: 14,
            //             fontWeight: FontWeight.bold),
            //       ),
            //     ),
            //     const SizedBox(
            //       width: 10.0,
            //     ),
            //     OutlinedButton(
            //       autofocus: true,
            //       style: OutlinedButton.styleFrom(
            //           padding:
            //               const EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 20.0),
            //           // elevation: 20.0,
            //           side: const BorderSide(
            //             color: Colors.transparent,
            //           ),
            //           backgroundColor:
            //               _selectedIndex == 1 ? Colors.white : Colors.black),
            //       onPressed: () {
            //         print("blogs button was clicked");
            //         // Navigator.of(context).pushNamed('/');
            //         // _selectedIndex = 1;
            //         _NavigateAppBar(1);
            //       },
            //       child: Text(
            //         "blogs / projects",
            //         style: montserratStyle.copyWith(
            //             color:
            //                 _selectedIndex == 0 ? Colors.white : Colors.black,
            //             fontSize: 14,
            //             fontWeight: FontWeight.bold),
            //       ),
            //     ),
            //     const SizedBox(
            //       width: 10.0,
            //     ),
            //   ],
            // ),
            OutlinedButton(
              autofocus: true,
              style: OutlinedButton.styleFrom(
                padding: const EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 20.0),
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
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.bold),
              ),
            ),

            // SizedBox(width: 0.2 * width),
          ],
        ),
      ),
    );
  }
}

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
      color: Colors.black,
      child: Center(
        child: Container(
          color: Colors.black,
          child: SizedBox(
            width: 0.7 * width,
            height: 0.8 * height,
            child: Container(
              color: Colors.black,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    color: Colors.black,
                    child: SizedBox(
                      width: 0.05 * width,
                      child: iconList,
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      // Spacer(),
                      SizedBox(
                        width: 0.6 * width,
                        height: 0.8 * height,
                        child: Container(
                          color: Colors.black,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              // Spacer(),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                // crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Front-End developer ",
                                          style: poppinsStyle.copyWith(
                                              fontSize: 40,
                                              color: AppColors.darkModeText,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        RichText(
                                          text: TextSpan(
                                            // text: 'I’m experienced in ',
                                            style: poppinsStyle,
                                            children: const <TextSpan>[
                                              TextSpan(
                                                  text: 'creating ',
                                                  style: TextStyle(
                                                    fontSize: 40,
                                                    color:
                                                        AppColors.darkModeText,
                                                  )),
                                              TextSpan(
                                                  text: 'pixel-perfect',
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 40,
                                                      color: AppColors
                                                          .darkModeText,
                                                      decoration: TextDecoration
                                                          .underline,
                                                      decorationColor:
                                                          Colors.red,
                                                      decorationThickness: 2)),
                                              TextSpan(
                                                  text: '\nintuitive',
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 40,
                                                      color: AppColors
                                                          .darkModeText,
                                                      decoration: TextDecoration
                                                          .underline,
                                                      decorationColor:
                                                          Colors.red,
                                                      decorationThickness: 2)),
                                              TextSpan(
                                                  text: ' interfaces.',
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 40,
                                                    color:
                                                        AppColors.darkModeText,
                                                  )),
                                            ],
                                          ),
                                          textAlign: TextAlign.justify,
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    color: Colors.black,
                                    child: SizedBox(
                                      width: 0.15 * width,
                                      height: 0.3 * height,
                                      child: Container(
                                        child: SizedBox(
                                          width: 0.1 * width,
                                          height: 0.1 * width,
                                          child: jerinAvatar,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 0.05 * height,
                                // width: width,
                              ),
                              RichText(
                                text: TextSpan(
                                    style: montserratStyle,
                                    children: const [
                                      TextSpan(
                                        text: "I'm ",
                                        style: TextStyle(
                                          color: Colors.grey,
                                          fontSize: 15,
                                        ),
                                      ),
                                      TextSpan(
                                        text: "Jerin",
                                        style: TextStyle(
                                          color: AppColors.darkModeText,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15,
                                        ),
                                      ),
                                      TextSpan(
                                        text:
                                            ", a Bengaluru [India] based aspiring front-end developer. \nI specialize in building mobile and web based applications.",
                                        style: TextStyle(
                                          color: Colors.grey,
                                          fontSize: 15,
                                        ),
                                      ),
                                    ]),
                                textAlign: TextAlign.end,
                              ),
                              SizedBox(
                                height: 0.02 * height,
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
                                          fontSize: 15,
                                        )),
                                    TextSpan(
                                        text: 'Flutter',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.blue,
                                            fontSize: 15)),
                                    TextSpan(
                                        text: ' & ',
                                        style: TextStyle(
                                          color: Colors.grey,
                                          fontSize: 15,
                                        )),
                                    TextSpan(
                                        text: 'React.',
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.lightBlue,
                                          fontSize: 15,
                                        )),
                                    TextSpan(
                                        text: '.',
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.grey,
                                          fontSize: 15,
                                        )),
                                    TextSpan(
                                        text:
                                            "\nI have familiarity designing on ",
                                        style: TextStyle(
                                          color: Colors.grey,
                                          fontSize: 15,
                                        )),
                                    TextSpan(
                                        text: "F",
                                        style: TextStyle(
                                          color: Color(0xfff24e1e),
                                          fontSize: 15,
                                        )),
                                    TextSpan(
                                        text: "i",
                                        style: TextStyle(
                                          color: Color(0xffff7262),
                                          fontSize: 15,
                                        )),
                                    TextSpan(
                                        text: "g",
                                        style: TextStyle(
                                          color: Color(0xffa259ff),
                                          fontSize: 15,
                                        )),
                                    TextSpan(
                                        text: "m",
                                        style: TextStyle(
                                          color: Color(0xff1abcfe),
                                          fontSize: 15,
                                        )),
                                    TextSpan(
                                        text: "a",
                                        style: TextStyle(
                                          color: Color(0xff0acf83),
                                          fontSize: 15,
                                        )),
                                    TextSpan(
                                        text: ".",
                                        style: TextStyle(
                                          color: Colors.grey,
                                          fontSize: 15,
                                        )),
                                    TextSpan(
                                        text:
                                            '\nAlways open to collaborate where I can help design and build eye-pleasing user experiences.',
                                        style: TextStyle(
                                          color: Colors.grey,
                                          fontSize: 15,
                                        )),
                                  ],
                                ),
                                textAlign: TextAlign.center,
                              ),
                              SizedBox(
                                height: 0.05 * height,
                                // width: width,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 0.05 * width,
                    child: Container(
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class blogsView extends StatefulWidget {
  const blogsView({super.key});

  @override
  State<blogsView> createState() => _blogsViewState();
}

class _blogsViewState extends State<blogsView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
    );
  }
}
