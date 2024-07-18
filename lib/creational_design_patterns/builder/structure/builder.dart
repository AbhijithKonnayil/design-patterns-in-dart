import 'product.dart';

abstract class Builder {
  void buildPart1();
  void buildPart2();
  void buildPart3();
  Product build();
}

class ConcreteBuilder implements Builder {
  final Product _product = Product();
  
  @override
  Product build() => _product;

  @override
  void buildPart1() {
    _product.part1 = "part 1";
  }

  @override
  void buildPart2() {
    _product.part2 = "part 2";
  }

  @override
  void buildPart3() {
    _product.part3 = "part 3";
  }
}
