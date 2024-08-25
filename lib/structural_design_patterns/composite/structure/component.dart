abstract class Component {
  void operation();
}

class Leaf implements Component {
  String name;
  Leaf(this.name);
  @override
  void operation() {
    print("$name : operation executed");
  }
}

class Composite implements Component {
  final List<Component> _children = [];

  @override
  void operation() {
    _children.forEach((e) => e.operation());
  }

  void add(Component component) {
    _children.add(component);
  }

  void remove(Component component) {
    _children.remove(component);
  }
}
