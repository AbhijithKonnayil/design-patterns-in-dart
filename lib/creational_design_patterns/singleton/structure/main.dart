import 'singleton.dart';

void main() {
  Singleton instance1 = Singleton();
  Singleton instance2 = Singleton();

  print(instance1.hashCode);
  print(instance2.hashCode);
  print(instance1 == instance2);
}
