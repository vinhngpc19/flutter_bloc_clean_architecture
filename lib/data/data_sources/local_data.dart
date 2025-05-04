import 'package:forecast/data/models/person.dart';

abstract class LocalData {
  Future<void> savePerson(Person person);

  Future<Person> getLocalPerson();
}

class LocalDataImpl implements LocalData {
  @override
  Future<Person> getLocalPerson() async {
    return const Person();
  }

  @override
  Future<void> savePerson(Person person) {
    // TODO: implement savePerson
    throw UnimplementedError();
  }
}
