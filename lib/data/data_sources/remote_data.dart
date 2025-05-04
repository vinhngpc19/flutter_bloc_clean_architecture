import 'package:forecast/data/models/person.dart';

abstract class RemoteData {
  Future<Person> getMockPerson();
}

class RemoteDataImpl extends RemoteData {
  @override
  Future<Person> getMockPerson() async {
    return Person.fromJson({});
  }
}
