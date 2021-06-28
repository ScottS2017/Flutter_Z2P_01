import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:o1_widgets_you_can_see/pages/home.dart';
import 'package:o1_widgets_you_can_see/res/res_colors.dart';
import 'package:o1_widgets_you_can_see/res/res_images.dart';

class Welcome extends StatefulWidget {
  const Welcome({
    Key? key,
  }) : super(key: key);
  @override
  _WelcomeState createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> with SingleTickerProviderStateMixin {
  bool _splashScreenIsOnstage = true;
  bool _startFade = false;

  @override
  void initState() {
    super.initState();
    fadeTimer();
    offstageTimer();
  }

  Future<Timer> fadeTimer() async {
    return Timer(
      const Duration(milliseconds: 100),
      () => setState(
        () {
          _startFade = true;
        },
      ),
    );
  }

  Future<Timer> offstageTimer() async {
    return Timer(
      const Duration(seconds: 5),
      () => setState(
        () {
          _splashScreenIsOnstage = false;
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SafeArea(
        child: Stack(
          children: <Widget>[
            GestureDetector(
              onLongPress: () => Navigator.push<Route>(
                context,
                MaterialPageRoute(
                  builder: (context) => const Home(),
                ),
              ),
              child: Container(
                height: double.infinity,
                width: double.infinity,
                padding: const EdgeInsets.all(16),
                color: Colors.white,
                alignment: Alignment.topLeft,
                child: SingleChildScrollView(
                  child: Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: const Color(0xFFDDDDDD),
                      border: Border.all(
                        style: BorderStyle.solid,
                        width: 5,
                        color: const Color(0xFF888888),
                      ),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        const Text(
                          '\nWidgets You Can See',
                          semanticsLabel: 'Widgets You Can See',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 32,
                            color: Colors.black,
                          ),
                        ),
                        const Text(
                          '\n     What your user sees is the single biggest thing that determines if they like your app, followed closely by how easy it is to use and how smoothly it performs. These things all combine to create the user\s impression of your app but if they don\'t like what they see, then they may uninstall it before bothering to see how your app performs.\n\nHere we\'ll take a look at Containers, Decorations, Text, Images and Icons. We\'ll see what you can do with them and get a feel for how to tune them in a way that will bring your vision to life.\n\nBecause that\'s a big part of what Flutter is all about. Flutter is never having to tell your designer no; it\'s about being able to breathe life into just about anything you can imagine.\n\nThis app contains examples, exercises, and solutions for each of these Widgets, giving you not only practice but samples you can refer back to as a guide for as long as you need them. Further, if you write all of your exercise code below the TODOs, you can easily delete it and do the exercises until you\'re comfortable using each Widget and all its various properties.',
                          semanticsLabel: 'What your user sees is the single biggest thing that determines if they like your app, followed closely by how easy it is to use and how smoothly it performs. These things all combine to create the user\s impression of your app but if they don\'t like what they see, then they may uninstall it before bothering to see how your app performs. Here, we\'ll take a look at Containers, Decorations, Text, Images and Icons. We\'ll see what you can do with them and get a feel for how to tune them in a way that will bring your vision to life. Because that\'s a big part of what Flutter is all about. Flutter is never having to tell your designer no; it\'s about being able to breathe life into just about anything you can imagine. This app contains examples, exercises, and solutions for each of these Widgets, giving you not only practice but samples you can refer back to as a guide for as long as you need them. Further, if you write all of your exercise code below the TODOs, you can easily delete it and do the exercises until you\'re comfortable using each Widget and all its various properties.',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontSize: 24,
                            color: Colors.black,
                          ),
                        ),
                        const Text(
                          '\nPress And Hold\nAnywhere to Continue\n',
                          semanticsLabel:  'Press And Hold Anywhere to Continue',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 24,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              top: _splashScreenIsOnstage == true ? 0 : MediaQuery.of(context).size.height,
              child: AnimatedOpacity(
                opacity: _startFade == true ? 0 : 1.0,
                curve: Curves.easeInToLinear,
                duration: const Duration(milliseconds: 4000),
                child: Container(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  color: ResColors.blackTextColor,
                  child: Column(
                    children: <Widget>[
                      const Spacer(
                        flex: 35,
                      ),
                      const Text(
                        'Z2P',
                        style: TextStyle(
                          color: Color(0xDDFFFFFF),
                          fontSize: 140,
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                      const Spacer(
                        flex: 1,
                      ),
                      Image.asset(
                        ResImages.flutterLogo,
                        semanticLabel: 'Flutter, zero to productive',
                      ),
                      const Spacer(
                        flex: 64,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
