import 'house.dart';

abstract class HouseBuilder {
  void buildFoundation();
  void buildStructure();
  void buildRoof();
  void buildInterior();
  House build();
}

class ConcreteHouseBuilder implements HouseBuilder {
  House _house = House();

  @override
  void buildFoundation() {
    _house.foundation = 'Concrete, brick, and stone';
  }

  @override
  void buildStructure() {
    _house.structure = 'Wood and brick';
  }

  @override
  void buildRoof() {
    _house.roof = 'Concrete and shingles';
  }

  @override
  void buildInterior() {
    _house.interior = 'Drywall, paint, and fixtures';
  }

  @override
  House build() {
    return _house;
  }
}
