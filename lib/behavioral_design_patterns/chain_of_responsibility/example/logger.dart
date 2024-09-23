enum LogLevel { debug, warning, error, info }

abstract class Logger {
  Set<LogLevel> level;
  Logger? _next;
  Logger(this.level);

  void log(LogLevel logLevel, String msg) {
    if (level.contains(logLevel)) {
      writeMessage(msg);
    }
    _next?.log(logLevel, msg);
  }

  void writeMessage(String msg);

  set next(Logger logger) => _next = logger;
}

class ConsoleLogger extends Logger {
  ConsoleLogger(super.level);
  @override
  void writeMessage(String msg) {
    print("Cosole : $msg");
  }
}

class FileLogger extends Logger {
  FileLogger(super.level);
  @override
  void writeMessage(String msg) {
    print("File : $msg");
  }
}

class EmailLogger extends Logger {
  EmailLogger(super.level);
  @override
  void writeMessage(String msg) {
    print("Email : $msg");
  }
}
