import 'package:forecast/data/models/person.dart';

sealed class MockState {}

class MockInitial extends MockState {}

class MockLoading extends MockState {}

class MockLoaded extends MockState {
  final Person person;

  MockLoaded(this.person);
}

class MockError extends MockState {
  final String message;

  MockError(this.message);
}
