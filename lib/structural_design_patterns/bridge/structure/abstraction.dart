import 'package:design_patterns_in_dart/structural_design_patterns/bridge/structure/implementor.dart';

abstract class Abstraction {
  Implementor implementor;
  Abstraction(this.implementor);
  void operation();
}

class RefinedAbstraction1 extends Abstraction {
  RefinedAbstraction1(super.implementor);
  @override
  void operation() {
    implementor.operationImp1("RefinedAbstraction 1");
  }
}

class RefinedAbstraction2 extends Abstraction {
  RefinedAbstraction2(super.implementor);
  @override
  void operation() {
    implementor.operationImp2("RefinedAbstraction 2");
  }
}
