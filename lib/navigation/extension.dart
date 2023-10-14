part of 'navigation.dart';

/// Extension to ``[BuildContext]`` class to provide assorted functionalities

extension BuildContextExtensions on BuildContext {
  /// Alternate navigation mechanism to route based on platform
  void navigate(String location, {Object? extra}) {
    if (kIsWeb) {
      go(location, extra: extra);
    } else {
      push(location, extra: extra);
    }
  }

  /// Alternate navigation mechanism to named route based on platform
  void navigateNamed(
    String name, {
    Map<String, String> pathParams = const <String, String>{},
    Map<String, dynamic> queryParams = const <String, dynamic>{},
    Object? extra,
  }) {
    if (kIsWeb) {
      goNamed(
        name,
        pathParameters: pathParams,
        queryParameters: queryParams,
        extra: extra,
      );
    } else {
      pushNamed(
        name,
        pathParameters: pathParams,
        queryParameters: queryParams,
        extra: extra,
      );
    }
  }

  /// Alternate navigation mechanism to replace current page based on platform
  void navigateReplace(String destination, {Object? extra}) {
    if (kIsWeb) {
      go(destination, extra: extra);
    } else {
      pushReplacement(destination, extra: extra);
    }
  }
}
