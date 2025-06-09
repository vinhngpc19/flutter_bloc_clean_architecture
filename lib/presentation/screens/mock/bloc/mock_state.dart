part of 'mock_bloc.dart';

enum MockStatus { initial, loading, success, error }

@freezed
sealed class MockState with _$MockState {
  const factory MockState({
    Person? person,
    @Default(MockStatus.initial) MockStatus status,
    @Default(null) String? error,
    @Default(null) String? message,
  }) = _MockState;
}
