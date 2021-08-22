import 'dart:async';

import 'package:flutter/material.dart';
import 'package:o1_widgets_you_can_see/infrastructure/app_images.dart';
import 'package:o1_widgets_you_can_see/infrastructure/app_textstyles.dart';
import 'package:o1_widgets_you_can_see/infrastructure/theme.dart';

import '../z2p_01/home.dart';

class Welcome extends StatefulWidget {
  const Welcome({
    Key? key,
  }) : super(key: key);

  @override
  _WelcomeState createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
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
      const Duration(milliseconds: 1500),
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
            Center(
              child: SizedBox.expand(
                child: Container(
                  alignment: Alignment.bottomCenter,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Theme.of(context).accentColor,
                        Theme.of(context).primaryColorDark,
                      ],
                      begin: Alignment.topLeft,
                      end: Alignment.centerRight,
                      stops: const [0.3, 1],
                    ),
                  ),
                  child: Column(
                    children: [
                      Expanded(
                        flex: 5,
                        child: Column(
                          children: [
                            Container(
                              height: 200,
                              width: 200,
                              margin: const EdgeInsets.only(top: 30),
                              padding: const EdgeInsets.all(30),
                              decoration: BoxDecoration(
                                image: const DecorationImage(
                                  fit: BoxFit.contain,
                                  image: AssetImage('assets/images/F.png'),
                                ),
                                gradient: SweepGradient(
                                  colors: [
                                    Theme.of(context).primaryColorDark,
                                    Theme.of(context).primaryColor,
                                    Theme.of(context).accentColor,
                                    Theme.of(context).primaryColorLight,
                                    Theme.of(context).primaryColorDark,
                                  ],
                                  stops: const [0.0, 0.25, 0.5, 0.75, 1],
                                ),
                                border: Border.all(
                                  width: 3,
                                  color: Theme.of(context).backgroundColor,
                                ),
                                borderRadius: BorderRadius.circular(100),
                                boxShadow: const [
                                  BoxShadow(
                                    color: darkGrey,
                                    blurRadius: 4,
                                    offset: Offset(1.0, 1.0),
                                  ),
                                ],
                              ),
                            ),
                            const Spacer(
                              flex: 2,
                            ),
                            Text(
                              'Zero\nto\nProductive',
                              textAlign: TextAlign.center,
                              style: AppTextStyles.boldItalic36.copyWith(
                                color: Theme.of(context).cardColor,
                                shadows: const [
                                  Shadow(
                                    blurRadius: 4,
                                    color: darkGrey,
                                    offset: Offset(1, 1),
                                  ),
                                ],
                              ),
                            ),
                            const Spacer(
                              flex: 2,
                            ),
                            Text(
                              '"In under a pound of coffee"',
                              textAlign: TextAlign.center,
                              style: AppTextStyles.italic18.copyWith(
                                color: Theme.of(context).cardColor,
                                shadows: const [
                                  Shadow(
                                    blurRadius: 4,
                                    color: darkGrey,
                                    offset: Offset(1, 1),
                                  ),
                                ],
                              ),
                            ),
                            const Spacer(
                              flex: 3,
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Theme.of(context).backgroundColor,
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(80),
                            ),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              const Text('Brought to you by Ardan Labs'),
                              const SizedBox(
                                height: 16,
                              ),
                              Column(
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                      _buildCoursePickerButton(context: context, targetPage: const Z2P1Home(), text: 'Module 1',),
                                      _buildCoursePickerButton(context: context, targetPage: const Z2P1Home(), text: 'Module 2',),
                                    ],
                                  ),
                                  const SizedBox(height: 24,),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                      _buildCoursePickerButton(context: context, targetPage: const Z2P1Home(), text: 'Module 3',),
                                      _buildCoursePickerButton(context: context, targetPage: const Z2P1Home(), text: 'Module 4',),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            _buildSplashScreen(context),
          ],
        ),
      ),
    );
  }

  GestureDetector _buildCoursePickerButton({
    required BuildContext context,
    required Widget targetPage,
    required String text,
  }) {
    return GestureDetector(
      onTap: () => Navigator.push<Route>(
        context,
        MaterialPageRoute(
          builder: (context) => targetPage,
        ),
      ),
      child: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: Theme.of(context).primaryColor,
          borderRadius: BorderRadius.circular(6),
          boxShadow: const [
            BoxShadow(
              color: darkGrey,
              blurRadius: 4,
              offset: Offset(2, 2),
            ),
          ],
        ),
        child: Text(
         text,
          style: AppTextStyles.italic18.copyWith(
            color: Theme.of(context).backgroundColor,
            shadows: const [
              Shadow(
                blurRadius: 4,
                color: darkGrey,
                offset: Offset(1, 1),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Positioned _buildSplashScreen(BuildContext context) {
    return Positioned(
      top: _splashScreenIsOnstage == true
          ? 0
          : MediaQuery.of(context).size.height,
      child: AnimatedOpacity(
        opacity: _startFade == true ? 0 : 1.0,
        curve: Curves.easeInToLinear,
        duration: const Duration(milliseconds: 2000),
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Theme.of(context).accentColor,
                Theme.of(context).primaryColorDark,
              ],
              begin: Alignment.topLeft,
              end: Alignment.centerRight,
              stops: const [0.3, 1],
            ),
          ),
          child: Column(
            children: <Widget>[
              const Spacer(
                flex: 35,
              ),
              Text(
                'Z2P',
                textAlign: TextAlign.center,
                style: AppTextStyles.boldItalic36.copyWith(
                  color: Theme.of(context).backgroundColor,
                  fontSize: 140,
                  fontStyle: FontStyle.italic,
                  shadows: const [
                    Shadow(
                      blurRadius: 8,
                      color: darkGrey,
                      offset: Offset(1, 1),
                    ),
                  ],
                ),
              ),
              const Spacer(
                flex: 1,
              ),
              Image.asset(
                AppImages.flutterLogo,
                semanticLabel: 'Flutter, zero to productive',
              ),
              const Spacer(
                flex: 64,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
