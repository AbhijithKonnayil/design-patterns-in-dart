abstract class Button {
  void render();
}

class LightButton implements Button {
  @override
  void render() {
    print("Rendering Light Theme Button");
  }
}

class DarkButton implements Button {
  @override
  void render() {
    print("Rendering Dark Theme Button");
  }
}
