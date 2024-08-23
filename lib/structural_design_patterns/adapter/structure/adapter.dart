abstract class Target {
  void request();
}

class Adaptee {
  void specificRequest() {
    print("Executing Specific Request");
  }
}

class Adapter extends Target {
  @override
  void request() {
    Adaptee adaptee = Adaptee();
    adaptee.specificRequest();
  }
}
