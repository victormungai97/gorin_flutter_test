import 'dart:developer' as dev;

import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/foundation.dart';
import 'package:logging/logging.dart';

/// Service for logging purposes
class LoggingService {
  /// Private constructor
  const LoggingService._();

  /// One and only instance of ``[LoggingService]``
  static const instance = LoggingService._();

  static final _crashlytics = FirebaseCrashlytics.instance;

  /// Track and record exceptions and failures
  Future<void> log(
    Object? error, {
    String? label,
    StackTrace? stackTrace,
    int? logLevel,
    bool isException = true,
  }) async {
    try {
      if (kDebugMode) {
        dev.log(
          label ?? (isException ? '' : 'Something went wrong'),
          error: error,
          stackTrace: stackTrace,
          level: logLevel ??
              (isException
                  ? stackTrace == null
                      ? Level.SEVERE.value
                      : Level.SHOUT.value
                  : Level.INFO.value),
        );
      }
      if (!isException) {
        if (error is FlutterErrorDetails) {
          await _crashlytics.recordFlutterFatalError(error);
          return;
        }
        if (stackTrace == null) {
          await _crashlytics.log('`${label ?? "An error occurred"}` -> $error');
          return;
        }
        await _crashlytics.recordError(
          error,
          stackTrace,
          reason: label,
          fatal: true,
        );
      }
    } catch (error, stackTrace) {
      dev.log(
        'Error logging error',
        error: error,
        stackTrace: stackTrace,
        level: Level.SEVERE.value,
      );
    }
  }
}
