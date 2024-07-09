import './product.dart';

//declares an interface for operations that create abstract product objects
abstract class AbstractFactory {
  AbstractProduct createProduct();
}

class ConcreteFactory1 implements AbstractFactory {
  @override
  ConcreteProduct1 createProduct() {
    return ConcreteProduct1();
  }
}

class ConcreteFactory2 extends AbstractFactory {
  @override
  ConcreteProduct2 createProduct() {
    return ConcreteProduct2();
  }
}
