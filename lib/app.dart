import 'package:flutter/material.dart';
import 'package:o1_widgets_you_can_see/infrastructure/scratchpad.dart';

import 'z2p_01/box_decorations/example/box_decorations.dart';
import 'z2p_01/box_decorations/exercise/box_decorations_exercises.dart';
import 'z2p_01/box_decorations/solution/box_decorations_solution.dart';
import 'z2p_01/home.dart';
import 'app_launch/welcome.dart';
import 'infrastructure/logging.dart';
import 'infrastructure/theme.dart';
import 'z2p_01/containers/example/containers.dart';
import 'z2p_01/containers/exercise/container_exercises.dart';
import 'z2p_01/containers/solution/container_solution.dart';
import 'z2p_01/icons/example/icon_examples.dart';
import 'z2p_01/icons/exercise/icon_exercises.dart';
import 'z2p_01/icons/solution/icon_solution.dart';
import 'z2p_01/images/example/image_examples.dart';
import 'z2p_01/images/exercise/image_exercises.dart';
import 'z2p_01/images/solution/image_solution.dart';
import 'z2p_01/text/example/text_examples.dart';
import 'z2p_01/text/exercise/text_exercises.dart';
import 'z2p_01/text/solution/text_solution.dart';

class ZeroToProductiveApp extends StatelessWidget {
  const ZeroToProductiveApp({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Zero to Productive',
      theme: appTheme,
      onGenerateInitialRoutes: _onGenerateInitialRoutes,
      onGenerateRoute: _onGenerateRoute,
    );
  }
}

/// Generates a backstack of routes based on the given [initialRoutes] value.
///
/// Example of [initialRoutes] with a single route: `"/"`
///
/// Example of [initialRoutes] with multiple routes: `"dashboard/pair-device"`
List<Route<dynamic>> _onGenerateInitialRoutes(String initialRoutes) {
  uiLog.info('Generating initial route: $initialRoutes');
  final paths = initialRoutes == '/' ? ['/'] : initialRoutes.split('/');

  return [
    for (final path in paths)
      _onGenerateRoute(
        RouteSettings(
          name: path,
        ),
      ),
  ];
}

/// Generates the route for the given [settings].
///
/// Some routes are fully identified by a given `settings.name`, while other routes
/// inspect the `settings.name` and one or more arguments in `settings.arguments`.
///
/// See [Navigator] for methods to push, pop, and replace routes to achieve
/// app navigation.
Route<dynamic> _onGenerateRoute(RouteSettings settings) {
  uiLog.info('Generating route: ${settings.name}');

  late WidgetBuilder builder;
  switch (settings.name) {
    case '/':
      builder = (BuildContext context) => const Welcome();
      break;
    case 'home':
      builder = (BuildContext context) => const Z2P1Home(
      );
      break;
    case 'boxdecoration-example':
      builder = (BuildContext context) => const BoxDecorations(
        title: 'BoxDecoration Examples',
      );
      break;
    case 'boxdecoration-exercise':
      builder = (BuildContext context) => const BoxDecorationExercises(
        title: 'BoxDecoration Exercises',
      );
      break;
    case 'boxdecoration-solutions':
      builder = (BuildContext context) => const BoxDecorationSolution(
        title: 'BoxDecoration Solutions',
      );
      break;
    case 'containers-example':
      builder = (BuildContext context) => const Containers(
            title: 'Containers Example',
          );
      break;
    case 'containers-exercises':
      builder = (BuildContext context) => const ContainersExercises(
            title: 'Containers Exercises',
          );
      break;
    case 'containers-solution':
      builder = (BuildContext context) => const ContainersSolution(
            title: 'Containers Solution',
          );
      break;
    case 'icon-example':
      builder = (BuildContext context) => const IconExamples(
        title: 'Icon Examples',
      );
      break;
    case 'icon-exercise':
      builder = (BuildContext context) => const IconExercise(
        title: 'Icon Exercises',
      );
      break;
    case 'icon-solutions':
      builder = (BuildContext context) => const IconSolution(
        title: 'Icon Solutions',
      );
      break;
    case 'image-examples':
      builder = (BuildContext context) => const ImageExamples(
            title: 'Image Examples ',
          );
      break;
    case 'image-exercises':
      builder = (BuildContext context) => const ImageExercise(
            title: 'Image Exercises',
          );
      break;
    case 'image-solutions':
      builder = (BuildContext context) => const ImageSolution(
            title: 'Image Solutions',
          );
      break;
    case 'scratchpad':
      builder =(BuildContext context) => ScratchPad();
      break;
    case 'text-examples':
      builder = (BuildContext context) => const TextExamples(
            title: 'Text Examples ',
          );
      break;
    case 'text-exercises':
      builder = (BuildContext context) => const TextExercises(
            title: 'Text Exercises',
          );
      break;
    case 'text-solution':
      builder = (BuildContext context) => const TextSolution(
            title: 'Text Solutions',
          );
      break;
    default:
      throw Exception(
          'Unknown route: ${settings.name}, args: ${settings.arguments}');
  }

  return MaterialPageRoute(
    builder: builder,
    settings: settings,
  );
}
