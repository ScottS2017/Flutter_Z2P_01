import 'package:flutter/material.dart';
import 'package:o1_widgets_you_can_see/infrastructure/app_textstyles.dart';
import 'package:o1_widgets_you_can_see/infrastructure/custom_scroll_no_overglow.dart';
import 'package:o1_widgets_you_can_see/infrastructure/theme.dart';

class Z2P1Home extends StatefulWidget {
  const Z2P1Home({
    Key? key,
  }) : super(key: key);

  static Widget sizedBox40 = const SizedBox(height: 40);

  @override
  _Z2P1HomeState createState() => _Z2P1HomeState();
}

class _Z2P1HomeState extends State<Z2P1Home> {
  late FixedExtentScrollController _widgetSelectionController;
  late FixedExtentScrollController _exampleExerciseSolutionController;
  int _selectedWidget = 2;
  int _exampleExerciseOrSolution = 1;

  final aboveWhiteSpacerFlex = 4;
  final whiteExpandedFlex = 25;
  final listWheelScrollViewExpandedFlex = 50;
  final aboveGoButtonSpacerFlex = 8;
  final goButtonExpandedFlex = 8;
  final belowGoButtonSpacerFlex = 5;

  final routeMatrix = [
    [
      'containers-example',
      'containers-exercises',
      'containers-solution',
    ],
    [
      'boxdecoration-example',
      'boxdecoration-exercise',
      'boxdecoration-solutions',
    ],
    [
      'icon-example',
      'icon-exercise',
      'icon-solutions',
    ],
    [
      'image-examples',
      'image-exercises',
      'image-solutions',
    ],
    [
      'text-examples',
      'text-exercises',
      'text-solution',
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
                gradient: const LinearGradient(
                  colors: [
                    Color(0xFFfbc2f1),
                    Color(0xffad87ca),
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.centerRight,
                  stops: [
                    0,
                    1.1,
                  ],
                ),
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
              child: ScrollConfiguration(
                behavior: CustomScrollNoOverglow(),
                child: Column(
                  children: [
                    Spacer(
                      flex: aboveWhiteSpacerFlex,
                    ),
                    Expanded(
                      flex: whiteExpandedFlex,
                      child: Container(
                        width: double.infinity,
                        padding: const EdgeInsets.all(16),
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(
                            width: 2,
                            color: Colors.grey,
                          ),
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: const [
                            BoxShadow(
                              color: darkGrey,
                              blurRadius: 4,
                              offset: Offset(1, 1),
                            ),
                          ],
                        ),
                        child: const Text(
                          'Spin the wheels to select your destination',
                          textAlign: TextAlign.center,
                          style:  TextStyle(
                            fontSize: 32,
                            color: Colors.black87,
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: listWheelScrollViewExpandedFlex,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Expanded(
                            child: FractionallySizedBox(
                              heightFactor: 0.5,
                              child: Row(
                                children: [
                                  Expanded(
                                    flex: 3,
                                    child: ListWheelScrollView(
                                      controller: _widgetSelectionController,
                                      diameterRatio: 1.20,
                                      offAxisFraction: 0.7,
                                      useMagnifier: false,
                                      itemExtent: 40,
                                      squeeze: 0.75,
                                      onSelectedItemChanged: (index) {
                                        _selectedWidget = index;
                                      },
                                      clipBehavior: Clip.antiAlias,
                                      children: [
                                        _buildWheelItem(text: 'Container'),
                                        _buildWheelItem(text: 'Decorations'),
                                        _buildWheelItem(text: 'Icons'),
                                        _buildWheelItem(text: 'Images'),
                                        _buildWheelItem(text: 'Text'),
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
                              heightFactor: 0.5,
                              child: Row(
                                children: [
                                  Expanded(
                                    flex: 3,
                                    child: ListWheelScrollView(
                                      controller:
                                          _exampleExerciseSolutionController,
                                      diameterRatio: 1.20,
                                      offAxisFraction: -0.7,
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
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Spacer(
                      flex: aboveGoButtonSpacerFlex,
                    ),
                    Expanded(
                      flex: goButtonExpandedFlex,
                      child: GestureDetector(
                        onTap: () => Navigator.of(context).pushNamed(
                          routeMatrix[_selectedWidget]
                              [_exampleExerciseOrSolution],
                        ),
                        child: Container(
                          alignment: Alignment.center,
                          padding: const EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                Theme.of(context).primaryColor,
                                const Color(0xFFfbc2f1),
                                Theme.of(context).primaryColor,
                              ],
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              stops: const [
                                0.00,
                                0.35,
                                0.9,
                              ],
                            ),
                            color: Theme.of(context).primaryColor,
                            borderRadius: BorderRadius.circular(6),
                            boxShadow: const [
                              BoxShadow(
                                color: darkGrey,
                                blurRadius: 4,
                                offset: Offset(1, 1),
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
                    Spacer(
                      flex: belowGoButtonSpacerFlex,
                    ),
                  ],
                ),
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
