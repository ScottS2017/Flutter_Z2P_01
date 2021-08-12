import 'dart:async';

import 'package:flutter/material.dart';
import 'package:logging/logging.dart';
import 'package:o1_widgets_you_can_see/app_launch/welcome.dart';

import 'infrastructure/logging.dart';

void main() {
  // Run the app in a zone so that we can catch and report any
  // non-Flutter framework errors.
  runZonedGuarded(() {
    initLoggers(Level.ALL);

    runApp(const Welcome(title: 'Zero to Productive',));
  }, (Object error, StackTrace stack) {
    errorLog.shout('Uncaught error: $error');
    errorLog.shout('Stacktrace:');
    errorLog.shout(stack);
  });
}
