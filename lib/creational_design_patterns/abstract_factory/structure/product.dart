abstract class AbstractProduct {
  void showMessage();
}

class ConcreteProduct1 implements AbstractProduct {
  @override
  void showMessage() {
    print("Hi, Concrete Product 1");
  }
}

class ConcreteProduct2 implements AbstractProduct {
  @override
  void showMessage() {
    print("Hi, Concrete Product 2");
  }
}
