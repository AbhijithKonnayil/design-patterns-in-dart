class Logger {
  static final Logger _instance = Logger._internal();

  Logger._internal(); // Private constructor

  factory Logger() {
    return _instance;
  }

  void log(String message) {
    print("Log: $message");
    // Append message to a file or database
  }
}

void main() {
  var logger1 = Logger();
  var logger2 = Logger();

  logger1.log("First log message");
  logger2.log("Second log message");

  // Both logger1 and logger2 are the same instance.
  print(logger1 == logger2); // true
}
