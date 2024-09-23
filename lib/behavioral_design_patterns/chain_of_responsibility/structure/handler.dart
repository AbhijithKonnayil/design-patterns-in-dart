
abstract class Handler {
  String type;
  Handler? _next;
  Handler(this.type);

  void handleRequest(String _type, String msg) {
    if (type==_type) {
      operation(msg);
    }
    _next?.handleRequest(_type, msg);
  }

  void operation(String msg);

  set next(Handler logger) => _next = logger;
}

class ConcreteHandler1 extends Handler {
  ConcreteHandler1(super.level);
  @override
  void operation(String msg) {
    print("ConcreteHandler1 : $msg");
  }
}

class ConcreteHandler2 extends Handler {
  ConcreteHandler2(super.level);
  @override
  void operation(String msg) {
    print("ConcreteHandler2 : $msg");
  }
}

class ConcreteHandler3 extends Handler {
  ConcreteHandler3(super.level);
  @override
  void operation(String msg) {
    print("ConcreteHandler3 : $msg");
  }
}
