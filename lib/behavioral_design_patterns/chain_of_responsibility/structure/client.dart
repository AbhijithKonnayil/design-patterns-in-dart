
import 'handler.dart';

void main(){
Handler consoleLogger = ConcreteHandler1("1");
Handler emailLogger = ConcreteHandler3("3");
Handler fileLogger = ConcreteHandler2("2");

consoleLogger.next=fileLogger;
fileLogger.next=emailLogger;


consoleLogger.handleRequest("1", "Operation A");
consoleLogger.handleRequest("2", "Operarion B");
consoleLogger.handleRequest("1", "Operation C");
consoleLogger.handleRequest("3", "Operation D");


}
