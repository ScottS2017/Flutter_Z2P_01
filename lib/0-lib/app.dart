import 'package:flutter/material.dart';

import 'app_launch/home2.dart';
import 'infrastructure/logging.dart';
import 'theme.dart';
import 'z2p_01/a_containers/example/a_containers.dart';

class ModeApp extends StatelessWidget {
  const ModeApp({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mode',
      theme: modeTheme,
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
      builder = (BuildContext context) =>  const Home2(title:'Zero to Productive');
      break;
    case 'containers-example':
      builder = (BuildContext context) => Containers(
        onBackPressed: () {
          Navigator.of(context).pop();
        },
      );
      break;
    default:
      throw Exception('Unknown route: ${settings.name}, args: ${settings.arguments}');
  }

  return MaterialPageRoute(
    builder: builder,
    settings: settings,
  );
}
