abstract class Implementor {
  void operationImp1(String abstraction);
  void operationImp2(String abstraction);
}

class ConcreteImplementor1 implements Implementor {
  @override
  void operationImp1(String abstraction) {
    print("$abstraction : Concrete Implementor 1 - operationImp1");
  }

  @override
  void operationImp2(String abstraction) {
    print("$abstraction : Concrete Implementor 1 - operationImp2");
  }
}

class ConcreteImplementor2 implements Implementor {
  @override
  void operationImp1(String abstraction) {
    print("$abstraction : Concrete Implementor 2 - operationImp1");
  }

  @override
  void operationImp2(String abstraction) {
    print("$abstraction : Concrete Implementor 2 - operationImp2");
  }
}
