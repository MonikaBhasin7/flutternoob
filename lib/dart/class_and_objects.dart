void main() {
  var person = Person(1, "Krsna", 1000000);
  person.marks = 100;

  print("Person marks - ${person.marks}");

  var customPerson = Person.customConstructor(1);
}

class Person {
  int id = -1;
  String? name; // Declare instance variable name, initially null.
  int? age;
  double? _marks;

  //parameterized constructor
  Person(int id, String name, int age) {
    this.id = id;
    this.name = name;
    this.age = age;
  }

  //custom Constructor
  Person.customConstructor(int id) {
    this.id = id;
  }

  void set marks(double? marks) {
    this._marks = marks;
  }

  double? get marks => this._marks;
}
