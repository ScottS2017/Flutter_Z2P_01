import 'dart:async';

import 'package:flutter/material.dart';
import 'package:logging/logging.dart';

import 'app.dart';
import 'infrastructure/logging.dart';

void main() {
  // Run the app in a zone so that we can catch and report any
  // non-Flutter framework errors.
  runZonedGuarded(() {
    initLoggers(Level.ALL);

    runApp(const ZeroToProductiveApp());
  }, (Object error, StackTrace stack) {
    errorLog.shout('Uncaught error: $error');
    errorLog.shout('Stacktrace:');
    errorLog.shout(stack);
  });
}