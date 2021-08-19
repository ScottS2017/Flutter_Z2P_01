import 'package:flutter/material.dart';
import 'package:o1_widgets_you_can_see/infrastructure/app_colors.dart';
import 'package:o1_widgets_you_can_see/infrastructure/app_textstyles.dart';
import 'package:o1_widgets_you_can_see/infrastructure/theme.dart';

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

class Home extends StatefulWidget {
  const Home({
    Key? key,
  }) : super(key: key);

  static Widget sizedBox40 = const SizedBox(height: 40);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late FixedExtentScrollController _widgetSelectionController;
  late FixedExtentScrollController _exampleExerciseSolutionController;
  int _selectedWidget = 2;
  int _exampleExerciseOrSolution = 1;

  final routeMatrix = [
    [
      const Containers(
        title: 'Containers Examples',
      ),
      const ContainersExercises(
        title: 'Containers Exercises',
      ),
      const ContainersSolution(
        title: 'Containers Solutions',
      ),
    ],
    [
      const BoxDecorations(),
      const BoxDecorationExercises(),
      const BoxDecorationSolution(),
    ],
    [
      const IconExamples(),
      const IconExercise(),
      const IconSolution(),
    ],
    [
      const Image_Examples(),
      const ImageExercise(),
      const ImageSolution(),
    ],
    [
      const TextExamples(),
      const TextExercises(),
      const TextSolution(),
    ]
  ];

  @override
  void initState() {
    super.initState();
    _widgetSelectionController = FixedExtentScrollController(
      initialItem: _selectedWidget,
    );
    _exampleExerciseSolutionController = FixedExtentScrollController(
      initialItem: _exampleExerciseOrSolution,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SafeArea(
        child: Center(
          child: Container(
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
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              margin: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Theme.of(context).backgroundColor,
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
                  Expanded(
                    flex: 90,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Expanded(
                          child: FractionallySizedBox(
                            heightFactor: 0.3,
                            child: Row(
                              children: [
                                Expanded(
                                  flex: 3,
                                  child: Stack(
                                    children: [
                                      ListWheelScrollView(
                                        controller: _widgetSelectionController,
                                        diameterRatio: 1.20,
                                        offAxisFraction: 0.4,
                                        useMagnifier: false,
                                        itemExtent: 40,
                                        squeeze: 0.75,
                                        onSelectedItemChanged: (index) {
                                          _selectedWidget = index;
                                        },
                                        children: [
                                          _buildWheelItem(text: 'Container'),
                                          _buildWheelItem(text: 'Decorations'),
                                          _buildWheelItem(text: 'Icons'),
                                          _buildWheelItem(text: 'Images'),
                                          _buildWheelItem(text: 'Text'),
                                        ],
                                      ),
                                      IgnorePointer(
                                        child: Container(
                                          decoration: BoxDecoration(
                                            gradient: LinearGradient(
                                              colors: [
                                                Theme.of(context).backgroundColor,
                                                listWheelScrollViewScrim,
                                                Theme.of(context).backgroundColor,
                                              ],
                                              begin: Alignment.topCenter,
                                              end: Alignment.bottomCenter,
                                              stops: const [0, 0.5, 1],
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        FractionallySizedBox(
                          heightFactor: 0.3,
                          child: Center(
                            child: Container(
                              height: 1,
                              width: 16,
                              margin: const EdgeInsets.only(bottom: 10),
                              color: darkGrey,
                            ),
                          ),
                        ),
                        Expanded(
                          child: FractionallySizedBox(
                            heightFactor: 0.3,
                            child: Row(
                              children: [
                                Expanded(
                                  flex: 3,
                                  child: Stack(
                                    children: [
                                      ListWheelScrollView(
                                        controller:
                                            _exampleExerciseSolutionController,
                                        diameterRatio: 1.20,
                                        offAxisFraction: 0.4,
                                        useMagnifier: false,
                                        itemExtent: 40,
                                        squeeze: 0.75,
                                        onSelectedItemChanged: (index) {
                                          _exampleExerciseOrSolution = index;
                                        },
                                        children: [
                                          _buildWheelItem(text: 'Example'),
                                          _buildWheelItem(text: 'Exercise'),
                                          _buildWheelItem(text: 'Solution'),
                                        ],
                                      ),
                                      IgnorePointer(
                                        child: Container(
                                          decoration: BoxDecoration(
                                            gradient: LinearGradient(
                                              colors: [
                                                Theme.of(context).backgroundColor,
                                                listWheelScrollViewScrim,
                                                Theme.of(context).backgroundColor,
                                              ],
                                              begin: Alignment.topCenter,
                                              end: Alignment.bottomCenter,
                                              stops: const [0, 0.5, 1],
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 10,
                    child: GestureDetector(
                      onTap: () => Navigator.push<Route>(
                        context,
                        MaterialPageRoute(
                          builder: (context) => routeMatrix[_selectedWidget]
                              [_exampleExerciseOrSolution],
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
                          'Go',
                          style: AppTextStyles.italic30.copyWith(
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
                    ),
                  ),
                  const Spacer(flex: 10),

                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Text _buildWheelItem({required String text}) {
    return Text(
      text,
      textAlign: TextAlign.start,
      style: const TextStyle(fontSize: 24),
    );
  }
}
