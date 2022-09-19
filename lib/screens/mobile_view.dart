import 'package:floating_navbar/floating_navbar_item.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:floating_navbar/floating_navbar.dart';

import 'package:url_launcher/url_launcher.dart';

import '../config/code_blocks.dart';
import '../config/constants.dart';
import '../config/palette.dart';

class MobileView extends StatefulWidget {
  const MobileView({super.key});

  @override
  State<MobileView> createState() => _MobileViewState();
}

class _MobileViewState extends State<MobileView> {
  int _selectedIndex = 0;

  // _NavigateBottomBar(int index) {
  //   setState(() {
  //     _selectedIndex = index;
  //   });
  // }

  final List<Widget> _pages = [
    MobileAbout(),
    blogsView(),
    // launchUrl(resumePath)
  ];

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size(width, 0.07 * height), child: _MobileAppBar()),
      // body: _pages[_selectedIndex],
      // // bottomNavigationBar: customBottomBar(),
      // bottomNavigationBar:
      body: MobileAbout(),
    );
  }
}

class _MobileAppBar extends StatelessWidget {
  const _MobileAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: jerinSignature,
    );
  }
}

class resumeView extends StatelessWidget {
  const resumeView({super.key});

  @override
  Widget build(BuildContext context) {
    final Uri resumePath = Uri.file("./lib/assets/Jerin_James.pdf");
    return Container(
        color: Colors.grey[900],
        child: Center(
          child: Container(
            height: 50.0,
            width: 100.0,
            child: ElevatedButton(
              onPressed: () {
                launchUrl(resumePath);
              },
              child: const Text(
                "resume",
              ),
            ),
          ),
        ));
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
      child: SingleChildScrollView(
        child: Container(
          width: width,
          color: Colors.black,
          child: Column(
            // mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                color: Colors.black,
                padding: const EdgeInsets.all(8.0),
                width: 0.8 * width,
                height: 0.5 * height,
                child: Container(child: jerinAvatar),
                alignment: Alignment.center,
              ),
              Container(
                color: Colors.black,
                padding: const EdgeInsets.all(8.0),
                // width: 0.8 * width,
                // height: 0.5 * height,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Front-End developer ",
                      style: poppinsStyle.copyWith(
                          fontSize: 30,
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
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                color: AppColors.darkModeText,
                              )),
                          TextSpan(
                              text: 'pixel-perfect',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 30,
                                  color: AppColors.darkModeText,
                                  decoration: TextDecoration.underline,
                                  decorationColor: Colors.red,
                                  decorationThickness: 2)),
                          TextSpan(
                              text: '\nintuitive',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 30,
                                  color: AppColors.darkModeText,
                                  decoration: TextDecoration.underline,
                                  decorationColor: Colors.red,
                                  decorationThickness: 2)),
                          TextSpan(
                              text: ' interfaces.',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 30,
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
                      text: TextSpan(style: montserratStyle, children: const [
                        TextSpan(
                          text: "I'm ",
                          style: TextStyle(
                            color: Colors.grey,
                            // fontWeight: FontWeight.w700,
                            fontSize: 15,
                          ),
                        ),
                        TextSpan(
                          text: "Jerin",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontSize: 15,
                          ),
                        ),
                        TextSpan(
                          text:
                              ", a Bengaluru [India] based aspiring front-end developer. \nI specialize in building mobile and web based applications.",
                          style: TextStyle(
                              color: Colors.grey,
                              // fontWeight: FontWeight.w700,
                              fontSize: 15),
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
                                // fontWeight: FontWeight.w700,
                                fontSize: 15,
                              )),
                          TextSpan(
                              text: 'Flutter',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.blue,
                                fontSize: 15,
                              )),
                          TextSpan(
                              text: ' & ',
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 15,
                              )),
                          TextSpan(
                              text: 'React',
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
                              text: "\nI have familiarity designing on ",
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
                                  "\nAlways open to collaborate where I can help design and build eye-pleasing user experiences.",
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 15,
                              )),
                        ],
                      ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 0.05 * height),
                    Center(
                        child: Container(
                      color: Colors.black,
                      height: 0.18 * height,
                      child: iconListMobile,
                    )),
                  ],
                ),
              ),
              // SizedBox(height: 0.1 * height, width: width),
              Center(
                child: Text(
                  "<Made using Flutter/>",
                  style: robotoMonoStyle.copyWith(
                      color: Colors.white,
                      fontSize: 10,
                      fontWeight: FontWeight.normal),
                ),
              ),
              SizedBox(height: 0.01 * height, width: width),
            ],
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
    // double height = MediaQuery.of(context).size.height;
    // double width = MediaQuery.of(context).size.width;
    return Container(
      color: Colors.black,
      child: Center(
        child: Text(
          "this is still WIP",
          style: poppinsStyle.copyWith(fontSize: 30, color: Colors.green),
        ),
      ),
      // alignment: Alignment.bottomCenter,
    );
  }
}

// class customBottomBar extends StatefulWidget {
//   const customBottomBar({super.key});

//   @override
//   State<customBottomBar> createState() => _customBottomBarState();
// }

//  FloatingNavBar(
//         resizeToAvoidBottomInset: false,
//         color: Colors.grey,
//         selectedIconColor: Colors.white,
//         unselectedIconColor: Colors.white.withOpacity(0.6),
//         items: [
//           FloatingNavBarItem(
//               iconData: Icons.home_filled, page: MobileAbout(), title: 'about'),
//           FloatingNavBarItem(
//               iconData: Icons.book,
//               page: const blogsView(),
//               title: 'blogs / projects'),
//           FloatingNavBarItem(
//             iconData: Icons.file_download_sharp,
//             title: 'resume',
//             page: resumeView(),
//           ),
//         ],
//         horizontalPadding: 20.0,
//         hapticFeedback: true,
//         showTitle: true,
//         borderRadius: 100,
//       ),

// class _customBottomBarState extends State<customBottomBar> {
//   @override
//   Widget build(BuildContext context) {
//     double height = MediaQuery.of(context).size.height;
//     double width = MediaQuery.of(context).size.width;
//     return Container(
//         color: Colors.transparent,
//         child: Container(
//           color: Colors.grey[900],
//           child: SizedBox(
//               width: 0.1 * width,
//               height: 0.07 * height,
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   IconButton(
//                     onPressed: () {},
//                     icon: const Icon(FontAwesomeIcons.home),
//                     iconSize: 24.0,
//                     color: Colors.white,
//                     autofocus: true,
//                   ),
//                   const SizedBox(width: 10),
//                   IconButton(
//                     onPressed: () {},
//                     icon: const Icon(FontAwesomeIcons.spa),
//                     iconSize: 24.0,
//                     color: Colors.white,
//                     autofocus: true,
//                   ),
//                   const SizedBox(width: 10),
//                   IconButton(
//                     onPressed: () {},
//                     icon: const Icon(FontAwesomeIcons.filePdf),
//                     iconSize: 24.0,
//                     color: Colors.white,
//                     autofocus: true,
//                   ),
//                 ],
//               )),
//         ));
//   }
// }
