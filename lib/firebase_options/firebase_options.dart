import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;

import '../utils/utils.dart';

import 'firebase_options_dev.dart' as dev;
import 'firebase_options_local.dart' as local;
import 'firebase_options_prod.dart' as prod;
import 'firebase_options_staging.dart' as staging;

FirebaseOptions? getFirebaseOptions({Environment? environment}) {
  return switch (environment) {
    Environment.local => local.DefaultFirebaseOptions.currentPlatform,
    Environment.develop => dev.DefaultFirebaseOptions.currentPlatform,
    Environment.staging => staging.DefaultFirebaseOptions.currentPlatform,
    Environment.production => prod.DefaultFirebaseOptions.currentPlatform,
    _ => null,
  };
}
