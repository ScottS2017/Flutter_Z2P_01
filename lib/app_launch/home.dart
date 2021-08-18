import 'package:flutter/material.dart';
import 'package:o1_widgets_you_can_see/infrastructure/app_colors.dart';

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

class Home extends StatelessWidget {
  const Home({
    Key? key,
  }) : super(key: key);

  static Widget sizedBox40 = const SizedBox(height: 40);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SafeArea(
        child: Stack(
          children: <Widget>[
            Center(
              child: Container(
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Color(0xFF549AFF),
                      Color(0xFF303F9F),
                    ],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    stops: [0.05, .95],
                  ),
                ),
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  margin: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: const Color(0xFFFEFEFE),
                    border: Border.all(
                      style: BorderStyle.solid,
                      width: 2,
                      color: const Color(0xFF888888),
                    ),
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black87,
                        blurRadius: 10,
                        offset: Offset(1, 1),
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      const Spacer(
                        flex: 2,
                      ),
                      const Text(
                        'Widgets You Can See',
                        semanticsLabel: 'Arranging Widgets You Can See',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 32,
                          color: Colors.black,
                        ),
                      ),
                      const Spacer(
                        flex: 2,
                      ),
                      // ------------------------------------- First Button Section
                      _buildButtonSection(
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
                      sizedBox40,
                      // ---------------------------------- Second Button Section
                      _buildButtonSection(
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
                      sizedBox40,
                      // ------------------------------------ Third Button Section
                      _buildButtonSection(
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
                      sizedBox40,
                      // ----------------------------------- Fourth Button Section
                      _buildButtonSection(
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
                      sizedBox40,
                      // ------------------------------------ Fifth Button Section
                      _buildButtonSection(
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
                        flex: 5,
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

  Column _buildButtonSection({
    required String label,
    required Color color1,
    required Color color2,
    required Color color3,
    required VoidCallback callback1,
    required VoidCallback callback2,
    required VoidCallback callback3,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          label,
          style: const TextStyle(
            fontSize: 12,
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        Row(
          children: [
            Expanded(
              child: _buildCustomButton(
                callback: callback1,
                text: 'Example',
                color: color1,
              ),
            ),
            const SizedBox(
              width: 16,
            ),
            Expanded(
              child: _buildCustomButton(
                callback: callback2,
                text: 'Exercise',
                color: color2,
              ),
            ),
            const SizedBox(
              width: 16,
            ),
            Expanded(
              child: _buildCustomButton(
                callback: callback3,
                text: 'Solution',
                color: color3,
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildCustomButton({
    required String text,
    double height = 35,
    required Color color,
    required VoidCallback callback,
  }) {
    return GestureDetector(
      onTap: callback,
      child: Container(
        height: height,
        alignment: Alignment.center,
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              color,
              const Color(0xFFEEEEEE),
              color,
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            stops: const [0.05, 0.3, .95],
          ),
          borderRadius: BorderRadius.circular(6),
          boxShadow: const [
            BoxShadow(
              color: Colors.black38,
              blurRadius: 2,
              offset: Offset(2, 2),
            ),
          ],
        ),
        child: FittedBox(
          child: Text(
            text,
            style: const TextStyle(
              shadows: [
                Shadow(
                  color: AppColors.dropShadowColor,
                  blurRadius: 1,
                  offset: Offset(1, 1),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
