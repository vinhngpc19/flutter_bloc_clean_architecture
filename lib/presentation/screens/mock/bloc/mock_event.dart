part of 'mock_bloc.dart';

@freezed
sealed class MockEvent with _$MockEvent {
  const factory MockEvent.getMock() = _GetMock;
  const factory MockEvent.saveUser(Person person) = _SaveUser;
}
