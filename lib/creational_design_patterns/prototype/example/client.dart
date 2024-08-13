import 'package:design_patterns_in_dart/creational_design_patterns/prototype/example/character.dart';

void main(List<String> args) {
  Warrior warriorMaster = Warrior(100, 50, 'spear');
  Warrior warriorCopy = warriorMaster.clone();
  warriorMaster.display();
  warriorCopy.display();
  Archer archerMaster = Archer(100, 50, 'arrow');
  Archer archerCopy = archerMaster.clone();
  archerMaster.display();
  archerCopy.display();
}
