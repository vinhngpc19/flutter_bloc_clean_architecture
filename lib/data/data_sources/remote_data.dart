import 'package:forecast/data/models/person.dart';

abstract interface class RemoteData {
  Future<Person> getMockPerson();
}

class RemoteDataImpl implements RemoteData {
  @override
  Future<Person> getMockPerson() async {
    return Person.fromJson({});
  }
}
