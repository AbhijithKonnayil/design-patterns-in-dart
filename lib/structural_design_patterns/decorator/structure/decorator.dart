import 'component.dart';

class Decorator implements Component {
  final Component _component;

  Decorator(this._component);

  @override
  void operation() => _component.operation();
}

class ConcreteDecorator1 extends Decorator {
  ConcreteDecorator1(super._component);
  @override
  void operation() {
    super.operation();
    _addedBehavior1();
  }

  void _addedBehavior1() {
    print("Added Behavior - 1");
  }
}


class ConcreteDecorator2 extends Decorator {
  ConcreteDecorator2(super._component);
  @override
  void operation() {
    super.operation();
    _addedBehavior2();
  }

  void _addedBehavior2() {
    print("Added Behavior - 2");
  }
}
