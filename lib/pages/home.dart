import 'package:flutter/material.dart';
import 'package:o1_widgets_you_can_see/widgets/examples/a_containers.dart';
import 'package:o1_widgets_you_can_see/widgets/examples/b_box_decorations.dart';
import 'package:o1_widgets_you_can_see/widgets/examples/c_text_examples.dart';
import 'package:o1_widgets_you_can_see/widgets/examples/d_image_examples.dart';
import 'package:o1_widgets_you_can_see/widgets/examples/e_icon_examples.dart';
import 'package:o1_widgets_you_can_see/widgets/exercises/a_container_exercises.dart';
import 'package:o1_widgets_you_can_see/widgets/exercises/b_box_decorations_exercises.dart';
import 'package:o1_widgets_you_can_see/widgets/exercises/c_text_exercises.dart';
import 'package:o1_widgets_you_can_see/widgets/solutions/a_container_solution.dart';
import 'package:o1_widgets_you_can_see/widgets/solutions/b_box_decorations_solution.dart';
import 'package:o1_widgets_you_can_see/widgets/solutions/c_text_examples_solution.dart';
import 'package:o1_widgets_you_can_see/widgets/solutions/d_image_examples_solution.dart';
import 'package:o1_widgets_you_can_see/widgets/solutions/e_icon_examples_solution.dart';

class Home extends StatefulWidget {
  const Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  /// Create a page controller and set the first page to whatever is in the
  /// [0] element of the list of children
  PageController controller = PageController(
    initialPage: 0,
  );

  List<Widget> pages = [
    /// As the PageView is scrolled right or left, the page content shown
    /// is determined by this list. Each page number, from 0 to whatever,
    /// has a corresponding element in this List (think of it as an array element)
    const Containers(),
    const IconExamples(),
    const Image_Examples(),
    const TextExamples(),
    const BoxDecorations(),

    const ContainerExercises(),
    const ContainerExercises(), // Icons Exercises
    const ContainerExercises(), // Images Exercises
    const TextExampleExercises(),
    const BoxDecorationExercises(),

    const ContainerSolution(),
    const IconSolution(), // Icons Solution
    const ImageSolution(), // Images Solution
    const TextExampleSolution(),
    const BoxDecorationSolution(),
  ];

  /// This code is completely optional, and is used to change the color &
  /// text of the AppBar each time you swipe
  String titleString = 'Container Examples';
  Color appBarColor = const Color(0xFFB7459C);

  void setTitle(int page) {
    if (page == 0) {
      setState(() {
        titleString = 'Container Examples';
        appBarColor = const Color(0xFFB7459C);
      });
    } else if (page == 1) {
      setState(() {
        titleString = 'Icons Examples';
        appBarColor = const Color(0xFF0185D0);
      });
    } else if (page == 2) {
      setState(() {
        titleString = 'Image Examples';
        appBarColor = Colors.teal;
      });
    } else if (page == 3) {
      setState(() {
        titleString = 'Text & Styles Examples';
        appBarColor = const Color(0xFF444444);
      });
    } else if (page == 4) {
      setState(() {
        titleString = 'BoxDecoration Examples';
        appBarColor = const Color(0xFF0185D0);
      });
    } else if (page == 5) {
      setState(() {
        titleString = 'Container Exercises';
        appBarColor = const Color(0xFFB7459C);
      });
    } else if (page == 6) {
      setState(() {
        titleString = 'Icons Exercises';
        appBarColor = const Color(0xFF0185D0);
      });
    } else if (page == 7) {
      setState(() {
        titleString = 'Image Exercises';
        appBarColor = Colors.teal;
      });
    } else if (page == 8) {
      setState(() {
        titleString = 'Text & Styles Exercises';
        appBarColor = const Color(0xFF444444);
      });
    } else if (page == 9) {
      setState(() {
        titleString = 'BoxDecoration Exercises';
        appBarColor = const Color(0xFF0185D0);
      });
    } else if (page == 10) {
      setState(() {
        titleString = 'Container Solutions';
        appBarColor = const Color(0xFFB7459C);
      });
    } else if (page == 11) {
      setState(() {
        titleString = 'Icons Solutions';
        appBarColor = const Color(0xFF0185D0);
      });
    } else if (page == 12) {
      setState(() {
        titleString = 'Image Solutions';
        appBarColor = Colors.teal;
      });
    } else if (page == 13) {
      setState(() {
        titleString = 'Text & Styles Solutions';
        appBarColor = const Color(0xFF444444);
      });
    } else if (page == 14) {
      setState(() {
        titleString = 'BoxDecoration Solutions';
        appBarColor = const Color(0xFF0185D0);
      });
    }
  }

  /// This is where the UI is laid out. It's the "Blueprint", if you will.
  /// This just creates a Scaffold with an AppBar and the rest of the
  /// screen area is used for content. The content is determined
  /// by which element has been chosen in the "pages" list
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: appBarColor,
        title: Text(titleString),
      ),
      body: PageView(
        onPageChanged: setTitle,
        children: pages,
      ),
    );
  }
}
