import 'package:forecast/configs/local_storage/local_storage.dart';
import 'package:forecast/data/models/person.dart';

abstract class LocalData {
  Future<void> savePerson(Person person);

  Person getLocalPerson();

  Future<void> deletePerson(String id);
}

class LocalDataImpl extends LocalData {
  final LocalStorage _localStorage;
  static const String personKey = 'person';

  LocalDataImpl({required LocalStorage localStorage})
      : _localStorage = localStorage;

  @override
  Person getLocalPerson() {
    return _localStorage.personBox.get(personKey) ?? const Person();
  }

  @override
  Future<void> savePerson(Person person) async {
    await _localStorage.personBox.add(person);
  }

  @override
  Future<void> deletePerson(String id) async {
    await _localStorage.personBox.delete(id);
  }
}
