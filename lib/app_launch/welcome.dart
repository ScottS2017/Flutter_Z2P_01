import 'package:flutter/material.dart';
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

class Welcome extends StatelessWidget {

  const Welcome({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  static const Widget divider__________________________ = SizedBox(height: 40);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 32.0, horizontal: 16),
        child: Column(
          children: [
            ButtonSection(
              label: 'Containers, Alignment, Padding and Margin',
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
            divider__________________________,
            ButtonSection(
              label: 'Decorations and Gradients',
              callback1: () => Navigator.push<Route>(
                context,
                MaterialPageRoute(
                  builder: (context) => const BoxDecorations(),
                ),
              ),
              callback2: () => Navigator.push<Route>(
                context,
                MaterialPageRoute(
                  builder: (context) => const BoxDecorationExercises(),
                ),
              ),
              callback3: () => Navigator.push<Route>(
                context,
                MaterialPageRoute(
                  builder: (context) => const BoxDecorationSolution(),
                ),
              ),
            ),
            divider__________________________,
            ButtonSection(
              label: 'Icons',
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
            divider__________________________,
            ButtonSection(
              label: 'Image Basics',
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
            divider__________________________,
            ButtonSection(
              label: 'Text and TextStyle',
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
          ],
        ),
      ),
    );
  }
}
