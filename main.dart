import 'dart:io';

import 'person.dart';
import 'person_manager.dart';

void main() {
  PersonManager personManager = PersonManager();
  bool resume = true;
  while (resume) {
    stdout.write(
        "What do you want to do:\n1. Add a person.\n2. See all people.\n3. Exit\n4. Delete a person.\nPlease write your choice number");
    int? choiceNumber = int.parse(stdin.readLineSync() ?? "0");
    switch (choiceNumber) {
      case 1:
        {
          stdout.write("First Name:");
          String? name = stdin.readLineSync();
          stdout.write("Last Name:");
          String? surname = stdin.readLineSync();
          stdout.write("Gender:\n1. Male\n2. Female");
          String? genderNumber = stdin.readLineSync();
          Gender gender = (genderNumber == "1") ? Gender.male : Gender.female;
          personManager.addPerson(
              name: name ?? "", surname: surname ?? "", gender: gender);
        }
        break;
      case 2:
        {
          personManager.showAllPersons();
        }
        break;
      case 3:
        {
          resume = false;
        }
        break;
      case 4:
        {
          print("Enter ID");
          int? id = int.parse(stdin.readLineSync() ?? "0");
          personManager.deletePerson(id: id);
        }
      default:
        print("ERROR");
    }
  }
}
