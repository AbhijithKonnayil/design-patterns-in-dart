import 'package:design_patterns_in_dart/structural_design_patterns/composite/structure/component.dart';

void main(List<String> args) {
  Leaf leaf1_1 = Leaf("Leaf 1_1");
  Composite composite1 = Composite();

  Leaf leaf2_1 = Leaf("Leaf 2_1");
  Leaf leaf2_2 = Leaf("Leaf 2_2");
  Composite composite2 = Composite();
  composite2
    ..add(leaf2_1)
    ..add(leaf2_2);

  composite1.add(leaf1_1);
  composite1.add(composite2);
  composite1.operation();
}
