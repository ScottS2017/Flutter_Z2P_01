import 'package:flutter/material.dart';
import 'package:o1_widgets_you_can_see/pages/button_section.dart';
import 'package:o1_widgets_you_can_see/widgets/examples/a_containers.dart';
import 'package:o1_widgets_you_can_see/widgets/examples/b_box_decorations.dart';
import 'package:o1_widgets_you_can_see/widgets/examples/c_text_examples.dart';
import 'package:o1_widgets_you_can_see/widgets/examples/d_image_examples.dart';
import 'package:o1_widgets_you_can_see/widgets/examples/e_icon_examples.dart';
import 'package:o1_widgets_you_can_see/widgets/exercises/a_container_exercises.dart';
import 'package:o1_widgets_you_can_see/widgets/exercises/b_box_decorations_exercises.dart';
import 'package:o1_widgets_you_can_see/widgets/exercises/c_text_exercises.dart';
import 'package:o1_widgets_you_can_see/widgets/exercises/d_image_exercises.dart';
import 'package:o1_widgets_you_can_see/widgets/exercises/e_icon_exercises.dart';
import 'package:o1_widgets_you_can_see/widgets/solutions/a_container_solution.dart';
import 'package:o1_widgets_you_can_see/widgets/solutions/b_box_decorations_solution.dart';
import 'package:o1_widgets_you_can_see/widgets/solutions/c_text_examples_solution.dart';
import 'package:o1_widgets_you_can_see/widgets/solutions/d_image_solution.dart';
import 'package:o1_widgets_you_can_see/widgets/solutions/e_icon_solution.dart';

class Home2 extends StatelessWidget {
  final String title;

  const Home2({Key? key, required this.title})
      : super(
          key: key,
        );

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
                  builder: (context) => const Containers(),
                ),
              ),
              callback2:() => Navigator.push<Route>(
                context,
                MaterialPageRoute(
                  builder: (context) => const ContainerExercises(),
                ),
              ),
              callback3: () => Navigator.push<Route>(
        context,
        MaterialPageRoute(
          builder: (context) => const ContainerSolution(),
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
              callback2:  () => Navigator.push<Route>(
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
              callback3:() => Navigator.push<Route>(
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
              callback2:  () => Navigator.push<Route>(
                context,
                MaterialPageRoute(
                  builder: (context) => const ImageExercise(),
                ),
              ),
              callback3:  () => Navigator.push<Route>(
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
              callback3:  () => Navigator.push<Route>(
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
