import 'dart:async';

import 'package:flutter/material.dart';
import 'package:o1_widgets_you_can_see/app/app_colors.dart';
import 'package:o1_widgets_you_can_see/app/app_images.dart';
import 'package:o1_widgets_you_can_see/pages/home.dart';

class Welcome extends StatefulWidget {
  const Welcome({
    Key key,
}) : super(key: key);
  @override
  _WelcomeState createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome>   with SingleTickerProviderStateMixin{

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
      const Duration(seconds: 2),
        () => setState(
          () {
          _startFade = true;
        },
      ),
    );
  }

  Future<Timer> offstageTimer() async {
    return Timer(
      const Duration(seconds: 4),
        () => setState(
          () {
          _splashScreenIsOnstage = false;
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(
        children: <Widget>[
          GestureDetector(
            onTap: () => Navigator.push<Route>(
                context,
                MaterialPageRoute(builder:
                    (context) => const Home(),
                ),
            ),
            child: Container(
              height: double.infinity,
              width: double.infinity,
              color: Colors.yellow,
            ),
          ),
          Positioned(
            top: _splashScreenIsOnstage == true ? 0 : MediaQuery.of(context).size.height,
            child: AnimatedOpacity(
              opacity: _startFade == true ? 0: 1.0,

              duration: const Duration(milliseconds: 3000),
              child: Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                color: AppColors.darkThemeNoElevation,
                child: Image.asset(AppImages.flutterLogo),
              ),
            ),
          ),
        ],
      ),
    );
  }
}