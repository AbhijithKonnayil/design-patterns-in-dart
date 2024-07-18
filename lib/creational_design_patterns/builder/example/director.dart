import 'house.dart';
import 'house_builder.dart';

class Director {
  late HouseBuilder _builder;

  void setBuilder(HouseBuilder builder) {
    _builder = builder;
  }

  void constructHouse() {
    _builder.buildFoundation();
    _builder.buildStructure();
    _builder.buildRoof();
    _builder.buildInterior();
  }
}

void main() {
  Director director = Director();
  HouseBuilder builder = ConcreteHouseBuilder();

  director.setBuilder(builder);
  director.constructHouse();

  House house = builder.build();
  print(house);
}
