import 'package:forecast/data/data_sources/local_data.dart';
import 'package:forecast/data/data_sources/remote_data.dart';
import 'package:forecast/data/models/person.dart';

abstract class MockRepository {
  Future<Person> getData();

  Person getPersonFromStorage();
}

class MockRepositoryImpl extends MockRepository {
  final LocalData _localData;
  final RemoteData _remoteData;

  MockRepositoryImpl(
      {required LocalData localData, required RemoteData remoteData})
      : _localData = localData,
        _remoteData = remoteData;

  @override
  Future<Person> getData() async {
    return await _remoteData.getMockPerson();
  }

  @override
  Person getPersonFromStorage() {
    return _localData.getLocalPerson();
  }
}
