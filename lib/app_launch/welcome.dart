import 'dart:async';

import 'package:flutter/material.dart';
import 'package:o1_widgets_you_can_see/infrastructure/app_colors.dart';
import 'package:o1_widgets_you_can_see/infrastructure/app_images.dart';
import 'package:o1_widgets_you_can_see/infrastructure/app_textstyles.dart';

class Welcome extends StatefulWidget {
  const Welcome({
    Key? key,
    required this.title,
  }) : super(key: key);
  final String title;

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
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Color(0xFFFB7EE4),
                        Color(0xff7200ca),
                      ],
                      begin: Alignment.topLeft,
                      end: Alignment.centerRight,
                      stops: [0.3, 1],
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
                                gradient: const SweepGradient(
                                  colors: [


                                    Color(0xff7200ca),
                                    Color(0xffaa00ff),
                                    Color(0xFFFB7EE4),
                                    Color(0xFFB7459C),
                                    Color(0xff7200ca),
                                  ],
                                  stops: [0.0, 0.25, 0.5, 0.75, 1],
                                ),
                                border: Border.all(
                                  width: 3,
                                  color: const Color(0xFFDDDDDD),
                                ),
                                borderRadius: BorderRadius.circular(100),
                                boxShadow: const [
                                  BoxShadow(
                                    color: Colors.black54,
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
                                color: AppColors.offWhitePageBackground,
                                shadows: const [
                                  Shadow(
                                    blurRadius: 4,
                                    color: Colors.black54,
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
                                color: AppColors.offWhitePageBackground,
                                shadows: const [
                                  Shadow(
                                    blurRadius: 4,
                                    color: Colors.black54,
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
                          decoration: const BoxDecoration(
                            color: Color(0xFFFEFEFE),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(80),
                            ),
                          ),
                          child:Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Text('Column Top Child'),
                              Text(' ----- '),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                              Text('Row Left Child'),
                              Text(' ----- '),
                                Text('Row Right Child'),
                              ],
                            ),
                            ],
                          )
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
          color: AppColors.blackTextColor,
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
