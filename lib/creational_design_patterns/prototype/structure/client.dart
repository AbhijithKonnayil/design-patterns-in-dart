
import 'package:design_patterns_in_dart/creational_design_patterns/prototype/structure/prototype.dart';

void main(List<String> args) {
ConcreatePrototype master  = ConcreatePrototype(1, 2);
ConcreatePrototype  prototype  = master.clone();

print(master.toString());
print(prototype.toString());
}