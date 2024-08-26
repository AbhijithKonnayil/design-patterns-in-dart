abstract class Component {
  void operation();
}

class ConcreteComponent implements Component {
  @override
  void operation() {
    print("Operation - concrete implementation");
  }
}
