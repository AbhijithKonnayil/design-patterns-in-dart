abstract class Character{
  Character clone();
  void  display();
}

class Warrior implements Character{

  int health;
  int attackPower;
  String weapon;

  Warrior(this.health, this.attackPower, this.weapon);
  
  @override
  Warrior clone() {
   return Warrior(health, attackPower, weapon);
  }

  @override
  void display() {
     print('Warrior with health: $health, attack power: $attackPower, weapon: $weapon');
  }



}

class Archer implements Character {
  int health;
  int attackPower;
  String bowType;

  Archer(this.health, this.attackPower, this.bowType);

  @override
  Archer clone() {
    return Archer(health, attackPower, bowType);
  }

  @override
  void display() {
    print('Archer with health: $health, attack power: $attackPower, bow type: $bowType');
  }
}