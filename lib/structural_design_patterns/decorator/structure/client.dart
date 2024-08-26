import 'package:design_patterns_in_dart/structural_design_patterns/decorator/structure/component.dart';
import 'package:design_patterns_in_dart/structural_design_patterns/decorator/structure/decorator.dart';

void main(List<String> args) {
  Component component = ConcreteComponent();
  Component decoratedComponent1 = ConcreteDecorator1(component);
  Component decoratedComponent2 = ConcreteDecorator2(decoratedComponent1);
  decoratedComponent2.operation();
}
