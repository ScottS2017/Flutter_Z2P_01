import 'package:logging/logging.dart';

/// [Logger] for user journey progress.
///
/// The [journeyLog] should describe how the user progresses through
/// a given feature, AKA "user journey", without logging specific
/// technical details. For technical details, use one of the more
/// specific [Logger]s such as [uiLog], [networkLog], or [bleLog].
final journeyLog = Logger('mode.userjourney');

/// [Logger] for user interaction, layout, and painting behaviors.
final uiLog = Logger('mode.ui');

/// [Logger] for network communication.
final networkLog = Logger('mode.network');

/// [Logger] for BLE communication.
final bleLog = Logger('mode.bluetooth');

/// [Logger] for error details that are not reported in another,
/// specialized [Logger].
final errorLog = Logger('mode.error');

void initLoggers(Level level) {
  Logger.root.level = level;

  hierarchicalLoggingEnabled = true;

  Logger.root.onRecord.listen((record) {
    // ignore: avoid_print
    print('${record.time.microsecondsSinceEpoch}: [${record.level}] ${record.message}');
  });
}