/// Data validation functions

class Validation {
  /// Validate an email address using regex
  static bool validateEmail(String? email) {
    if (email == null || email.isEmpty) return false;
    final regExp = RegExp(
      r'^(([^<>()[\]\\.,;:\s@"]+(\.[^<>()[\]\\.,;:\s@"]+)*)|(".+"))@((\[\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}\])|(([a-zA-Z\-\d]+\.)+[a-zA-Z]{2,}))$',
    );
    return regExp.hasMatch(email);
  }

  /// Validate a password
  static bool validatePassword(String? password) =>
      password != null && password.length >= 8;

  /// Compare two lists
  /// Returns true if the lists are both null, or if they are both non-null, have
  /// the same length, and contain the same members in the same order. Returns
  /// false otherwise.
  ///
  /// Obtained from flutter foundation library
  static bool listsEqual<T>(List<T>? a, List<T>? b) {
    if (a == null) {
      return b == null;
    }
    if (b == null || a.length != b.length) {
      return false;
    }
    if (identical(a, b)) {
      return true;
    }
    for (int index = 0; index < a.length; index += 1) {
      if (a[index] != b[index]) {
        return false;
      }
    }
    return true;
  }
}
