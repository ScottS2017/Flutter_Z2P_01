import 'dart:async';

import 'package:flutter/material.dart';
import 'package:logging/logging.dart';

import 'app_launch/welcome.dart';
import 'infrastructure/logging.dart';

void main() {
  // Run the app in a zone so that we can catch and report any
  // non-Flutter framework errors.
  runZonedGuarded(() {
    initLoggers(Level.SHOUT);

    // Override standard Flutter framework error handling and add our own
    // error handling behavior.
    final existingOnError = FlutterError.onError;
    FlutterError.onError = (FlutterErrorDetails details) {
      existingOnError?.call(details);
      // TODO: add something like crashlytics when server analytics are integrated
    };

    runApp(const Welcome(title: 'Zero to Productive'));
  }, (Object error, StackTrace stack) {
    errorLog.shout('Uncaught error: $error');
    errorLog.shout('Stacktrace:');
    errorLog.shout(stack);

    // TODO: add something like crashlytics when server analytics are integrated
  });
}
