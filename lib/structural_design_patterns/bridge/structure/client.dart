import 'package:design_patterns_in_dart/structural_design_patterns/bridge/structure/implementor.dart';

import 'abstraction.dart';

void main(List<String> args) {
  Implementor implementor = ConcreteImplementor2();
  Abstraction abstraction = RefinedAbstraction2(implementor);
  abstraction.operation();
}
