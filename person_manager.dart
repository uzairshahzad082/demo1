import 'person.dart';

class PersonManager {
  List<Person> persons = [];
  PersonManager();
  // add a person
  addPerson(
      {required String name, required String surname, required Gender gender}) {
    int id = persons.length + 1;
    persons.add(Person(gender: gender, id: id, name: name, surname: surname));
  }

  // show all people
  showAllPersons() {
    for (var person in persons) {
      person.showPerson();
    }
  }
}
