import 'package:flutter/material.dart';

import 'app_launch/welcome.dart';
import 'infrastructure/logging.dart';
import 'infrastructure/theme.dart';
import 'z2p_01/containers/example/containers.dart';
import 'z2p_01/containers/exercise/container_exercises.dart';
import 'z2p_01/containers/solution/container_solution.dart';

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
      builder = (BuildContext context) => const Welcome(title: 'Zero to Productive');
      break;
    case 'containers-example':
      builder = (BuildContext context) => Containers(
            title: 'Containers Example',
            onBackPressed: () {
              Navigator.of(context).pop();
            },
          );
      break;
    case 'containers-exercises':
      builder = (BuildContext context) => ContainersExercises(
            title: 'Containers Exercises',
            onBackPressed: () {
              Navigator.of(context).pop();
            },
          );
      break;
    case 'containers-solution':
      builder = (BuildContext context) => ContainersSolution(
            title: 'Containers Solution',
            onBackPressed: () {
              Navigator.of(context).pop();
            },
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
