import 'package:gorin_test_project/utils/utils.dart';

/// Base class for setting configurations for the application
/// e.g. environment and dynamic variables based on provided application flavors

class FlavorModel {
  FlavorModel({String? flavorName}) {
    switch (flavorName) {
      case 'local':
        environment = Environment.local;
      case 'dev':
      case 'develop':
      case 'development':
        environment = Environment.development;
      case 'stg':
      case 'staging':
        environment = Environment.staging;
      case 'prod':
      case 'production':
        environment = Environment.production;
      default:
        environment = Environment.unspecified;
    }
  }
  late final Environment environment;

  @override
  String toString() => 'Configuration $environment';
}
