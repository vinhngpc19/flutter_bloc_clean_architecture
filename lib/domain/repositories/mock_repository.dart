import 'package:forecast/data/models/person.dart';

abstract class MockRepository {
  Future<Person> getData();
}

class MockRepositoryImpl extends MockRepository {
  @override
  Future<Person> getData() async {
    print('This is mock get data');
    return const Person();
  }
}
