import 'package:design_patterns_in_dart/creational_design_patterns/builder/structure/builder.dart';
import 'package:design_patterns_in_dart/creational_design_patterns/builder/structure/product.dart';

class Director {
  late Builder builder;
  void setBuilder(Builder _builder) {
    builder = _builder;
  }

  void constructProduct() {
    builder.buildPart1();
    builder.buildPart2();
    builder.buildPart3();
  }
}

void main(List<String> args) {
  Director director = Director();
  ConcreteBuilder builder = ConcreteBuilder();
  director.setBuilder(builder);
  director.constructProduct();
  Product product = builder.build();
  print(product);
}
