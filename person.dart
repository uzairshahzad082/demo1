class Person {
  String name;
  String surname;
  Gender gender;
  int id;
  Person(
      {required this.gender,
      required this.id,
      required this.name,
      required this.surname});
  showPerson() {
    print(
        "Name: $name $surname\nGender: ${gender == Gender.male ? "Male" : "Female"}\n");
  }
}

enum Gender { male, female }
