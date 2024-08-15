class Singleton {
  static final Singleton _instance = Singleton._privateConstructor();

  Singleton._privateConstructor();

  factory Singleton() {
    return _instance;
  }
}
