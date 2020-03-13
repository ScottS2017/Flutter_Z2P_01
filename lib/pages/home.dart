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

class _HomeState extends State<Home>{


  List<Widget> pages = [
    ///
    const Containers(),
    const ContainerExercises(),
    const ContainerSolution(),
    //  const Containers(),

    ///
    const BoxDecorations(),
    const BoxDecorationExercises(),
    const BoxDecorationSolution(),
    // const BoxDecorations(),

    ///
    const TextExamples(),
    const TextExampleExercises(),
    const TextExampleSolution(),
    // const TextExamples(),

  //                   ///
  //                   const Image_Examples(),
  //                   const ImageSolution(),
  //                   const Image_Examples(),
  //                   // const Image_Examples(),

  //                   ///
  //                   const IconExamples(),
  //                   const IconSolution(),
  //                   const IconExamples(),
  //                   // const IconExamples(),
  ];

  PageController controller = PageController(
    initialPage: 1,
  );

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
        titleString = 'Container Exercises';
        appBarColor = const Color(0xFFB7459C);
      });
    } else if (page == 2) {
      setState(() {
        titleString = 'Container Solutions';appBarColor = const Color(0xFFB7459C);
      });
  //  } else if (page == 3) {
  //    setState(() {
  //      titleString = 'Container Homework';
  //    });
    } else if (page == 3) {
      setState(() {
        titleString = 'BoxDecoration Examples';
        appBarColor = const Color(0xFF0185D0);
      });
    } else if (page == 4) {
      setState(() {
        titleString = 'BoxDecoration Exercises';
        appBarColor = const Color(0xFF0185D0);
      });
    } else if (page == 5) {
      setState(() {
        titleString = 'BoxDecoration Solutions';
        appBarColor = const Color(0xFF0185D0);
      });
   // } else if (page == 7) {
   //   setState(() {
   //     titleString = 'BoxDecoration Homework';
   //   });
    } else if (page == 6) {
      setState(() {
        titleString = 'Text & Styles Examples';
        appBarColor = const Color(0xFF444444);
      });
    } else if (page == 7) {
      setState(() {
        titleString = 'Text & Styles Exercises';
        appBarColor = const Color(0xFF444444);
      });
    } else if (page == 8) {
      setState(() {
        titleString = 'Text & Styles Solutions';
        appBarColor = const Color(0xFF444444);
      });
  //     } else if (page == 11) {
  //       setState(() {
  //         titleString = 'Text & Styles Homework';
  //       });
 //        } else if (page == 9) {
 //          setState(() {
 //            titleString = 'Image Examples';
 //          });
 //        } else if (page == 10) {
 //          setState(() {
 //            titleString = 'Image Exercises';
 //          });
 //        } else if (page == 11) {
 //          setState(() {
 //            titleString = 'Image Solutions';
 //          });
 //      // } else if (page == 15) {
 //      //   setState(() {
 //      //     titleString = 'Image Homework';
 //      //   });
 //        } else if (page == 12) {
 //          setState(() {
 //            titleString = 'Icon Examples';
 //      //    });
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: appBarColor,
          title: Text(titleString),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: PageView(
            onPageChanged: setTitle,
            children: pages,
          ),
        ),
      ),
    );
  }
}
