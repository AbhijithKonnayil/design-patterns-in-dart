abstract class  Prototype{
  Prototype clone();
}

class  ConcreatePrototype implements Prototype{
  int? field1,field2;
  bool isClone = false;

  ConcreatePrototype(this.field1,this.field2);
  
  @override
  ConcreatePrototype clone() {
    ConcreatePrototype obj = ConcreatePrototype(field1, field2);
    obj.isClone = true;
    return obj;
  }

  @override
  String toString() => "ConcretePrototype field1:$field1 field2:$field2 isClone:$isClone";  
}