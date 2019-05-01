class Logger {
  static final Logger _singleton = Logger._internal();

  Logger._internal();

  factory Logger() {
    return _singleton;
  }

  static void logError(String code, String message) {
    print('Error: $code\nError Message: $message');
  }
}
