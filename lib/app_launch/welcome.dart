import 'dart:async';

import 'package:flutter/material.dart';
import 'package:o1_widgets_you_can_see/infrastructure/app_colors.dart';
import 'package:o1_widgets_you_can_see/infrastructure/app_images.dart';
import 'package:o1_widgets_you_can_see/infrastructure/button_section.dart';

import '../z2p_01/containers/example/containers.dart';
import '../z2p_01/containers/exercise/container_exercises.dart';
import '../z2p_01/containers/solution/container_solution.dart';
import '../z2p_01/box_decorations/example/box_decorations.dart';
import '../z2p_01/box_decorations/exercise/box_decorations_exercises.dart';
import '../z2p_01/box_decorations/solution/box_decorations_solution.dart';
import '../z2p_01/images/example/image_examples.dart';
import '../z2p_01/images/exercise/image_exercises.dart';
import '../z2p_01/images/solution/image_solution.dart';
import '../z2p_01/text/example/text_examples.dart';
import '../z2p_01/text/exercise/text_exercises.dart';
import '../z2p_01/text/solution/text_solution.dart';
import '../z2p_01/icons/example/icon_examples.dart';
import '../z2p_01/icons/exercise/icon_exercises.dart';
import '../z2p_01/icons/solution/icon_solution.dart';

class Welcome extends StatefulWidget {
  const Welcome({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  static const Widget divider__________________________ = SizedBox(height: 40);

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
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  margin: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: const Color(0xFFFEFEFE),
                    border: Border.all(
                      style: BorderStyle.solid,
                      width: 2,
                      color: const Color(0xFF888888),
                    ),
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black87,
                        blurRadius: 10,
                        offset: Offset(1, 1),
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      const Text(
                        '\nArranging Widgets\nYou Can See',
                        semanticsLabel: 'Arranging Widgets You Can See',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 32,
                          color: Colors.black,
                        ),
                      ),
                      const Spacer(),
                      ButtonSection(
                        label: 'Containers, Alignment, Padding and Margin',
                        color1: Colors.blue,
                        color2: Colors.red,
                        color3: Colors.green,
                        callback1: () => Navigator.push<Route>(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Containers(
                              title: 'Containers Examples',
                              onBackPressed: () {
                                Navigator.of(context).pop();
                              },
                            ),
                          ),
                        ),
                        callback2: () => Navigator.push<Route>(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ContainersExercises(
                              title: 'Containers Exercises',
                              onBackPressed: () {
                                Navigator.of(context).pop();
                              },
                            ),
                          ),
                        ),
                        callback3: () => Navigator.push<Route>(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ContainersSolution(
                              title: 'Containers Solutions',
                              onBackPressed: () {
                                Navigator.of(context).pop();
                              },
                            ),
                          ),
                        ),
                      ),
                      Welcome.divider__________________________,
                      ButtonSection(
                        label: 'Decorations and Gradients',
                        color1: Colors.pink,
                        color2: Colors.purple,
                        color3: Colors.orange,
                        callback1: () => Navigator.push<Route>(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const BoxDecorations(),
                          ),
                        ),
                        callback2: () => Navigator.push<Route>(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                const BoxDecorationExercises(),
                          ),
                        ),
                        callback3: () => Navigator.push<Route>(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const BoxDecorationSolution(),
                          ),
                        ),
                      ),
                      Welcome.divider__________________________,
                      ButtonSection(
                        label: 'Icons',
                        color1: Colors.blue,
                        color2: Colors.red,
                        color3: Colors.green,
                        callback1: () => Navigator.push<Route>(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const IconExamples(),
                          ),
                        ),
                        callback2: () => Navigator.push<Route>(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const IconExercise(),
                          ),
                        ),
                        callback3: () => Navigator.push<Route>(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const IconSolution(),
                          ),
                        ),
                      ),
                      Welcome.divider__________________________,
                      ButtonSection(
                        label: 'Image Basics',
                        color1: Colors.pink,
                        color2: Colors.purple,
                        color3: Colors.orange,
                        callback1: () => Navigator.push<Route>(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Image_Examples(),
                          ),
                        ),
                        callback2: () => Navigator.push<Route>(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const ImageExercise(),
                          ),
                        ),
                        callback3: () => Navigator.push<Route>(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const ImageSolution(),
                          ),
                        ),
                      ),
                      Welcome.divider__________________________,
                      ButtonSection(
                        label: 'Text and TextStyle',
                        color1: Colors.blue,
                        color2: Colors.red,
                        color3: Colors.green,
                        callback1: () => Navigator.push<Route>(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const TextExamples(),
                          ),
                        ),
                        callback2: () => Navigator.push<Route>(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const TextExampleExercises(),
                          ),
                        ),
                        callback3: () => Navigator.push<Route>(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const TextExampleSolution(),
                          ),
                        ),
                      ),
                      const Spacer(
                        flex: 2,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
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
            ),
          ],
        ),
      ),
    );
  }
}
