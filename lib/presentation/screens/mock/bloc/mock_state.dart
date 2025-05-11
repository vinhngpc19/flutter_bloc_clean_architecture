part of 'mock_bloc.dart';

@freezed
class MockState with _$MockState {
  const factory MockState({
    Person? person,
    @Default(false) bool? isLoading,
    @Default(null) String? error,
    @Default(null) String? message,
  }) = _MockState;
}
