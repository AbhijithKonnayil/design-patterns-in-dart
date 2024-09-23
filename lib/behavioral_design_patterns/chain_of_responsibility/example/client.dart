import 'package:design_patterns_in_dart/behavioral_design_patterns/chain_of_responsibility/example/logger.dart';

void main(){
Logger consoleLogger = ConsoleLogger({LogLevel.debug,LogLevel.error,LogLevel.info,LogLevel.warning});
Logger emailLogger = EmailLogger({LogLevel.error,});
Logger fileLogger = FileLogger({LogLevel.error,LogLevel.info,LogLevel.warning});

consoleLogger.next=fileLogger;
fileLogger.next=emailLogger;


consoleLogger.log(LogLevel.debug, "Debug Message");
consoleLogger.log(LogLevel.warning, "Warning Message");
consoleLogger.log(LogLevel.error, "Error Message");


}
