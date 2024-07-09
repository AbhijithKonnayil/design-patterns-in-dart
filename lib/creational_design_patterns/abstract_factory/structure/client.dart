import './factory.dart';
import './product.dart';

void main() {
  AbstractFactory factory = ConcreteFactory1();
  AbstractProduct product = factory.createProduct();
  product.showMessage();
}
