import './factory.dart';
import './product.dart';

void main() {
  AbstractFactory factory1 = ConcreteFactory1();
  AbstractProduct product1 = factory1.createProduct();
  product1.showMessage();

  AbstractFactory factory2 = ConcreteFactory2();
  AbstractProduct product2 = factory2.createProduct();
  product2.showMessage();
}
