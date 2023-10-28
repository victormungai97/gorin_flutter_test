/// List of flavors the application holds
enum Environment {
  local,
  development,
  staging,
  production,
  unspecified,
}

/// Modes by which a user enters into the app
enum Authentication {
  LOGIN,

  REGISTRATION,
}

/// Categories of files that can be used
enum FileType { IMAGE }

/// Avenues from which to access a file
enum FileSource { GALLERY, CAMERA, NETWORK }
