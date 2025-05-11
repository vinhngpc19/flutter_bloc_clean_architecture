// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'mock_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MockEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getMock,
    required TResult Function(Person person) saveUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getMock,
    TResult? Function(Person person)? saveUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getMock,
    TResult Function(Person person)? saveUser,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetMock value) getMock,
    required TResult Function(_SaveUser value) saveUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetMock value)? getMock,
    TResult? Function(_SaveUser value)? saveUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetMock value)? getMock,
    TResult Function(_SaveUser value)? saveUser,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MockEventCopyWith<$Res> {
  factory $MockEventCopyWith(MockEvent value, $Res Function(MockEvent) then) =
      _$MockEventCopyWithImpl<$Res, MockEvent>;
}

/// @nodoc
class _$MockEventCopyWithImpl<$Res, $Val extends MockEvent>
    implements $MockEventCopyWith<$Res> {
  _$MockEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MockEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$GetMockImplCopyWith<$Res> {
  factory _$$GetMockImplCopyWith(
          _$GetMockImpl value, $Res Function(_$GetMockImpl) then) =
      __$$GetMockImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetMockImplCopyWithImpl<$Res>
    extends _$MockEventCopyWithImpl<$Res, _$GetMockImpl>
    implements _$$GetMockImplCopyWith<$Res> {
  __$$GetMockImplCopyWithImpl(
      _$GetMockImpl _value, $Res Function(_$GetMockImpl) _then)
      : super(_value, _then);

  /// Create a copy of MockEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GetMockImpl implements _GetMock {
  const _$GetMockImpl();

  @override
  String toString() {
    return 'MockEvent.getMock()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetMockImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getMock,
    required TResult Function(Person person) saveUser,
  }) {
    return getMock();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getMock,
    TResult? Function(Person person)? saveUser,
  }) {
    return getMock?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getMock,
    TResult Function(Person person)? saveUser,
    required TResult orElse(),
  }) {
    if (getMock != null) {
      return getMock();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetMock value) getMock,
    required TResult Function(_SaveUser value) saveUser,
  }) {
    return getMock(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetMock value)? getMock,
    TResult? Function(_SaveUser value)? saveUser,
  }) {
    return getMock?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetMock value)? getMock,
    TResult Function(_SaveUser value)? saveUser,
    required TResult orElse(),
  }) {
    if (getMock != null) {
      return getMock(this);
    }
    return orElse();
  }
}

abstract class _GetMock implements MockEvent {
  const factory _GetMock() = _$GetMockImpl;
}

/// @nodoc
abstract class _$$SaveUserImplCopyWith<$Res> {
  factory _$$SaveUserImplCopyWith(
          _$SaveUserImpl value, $Res Function(_$SaveUserImpl) then) =
      __$$SaveUserImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Person person});

  $PersonCopyWith<$Res> get person;
}

/// @nodoc
class __$$SaveUserImplCopyWithImpl<$Res>
    extends _$MockEventCopyWithImpl<$Res, _$SaveUserImpl>
    implements _$$SaveUserImplCopyWith<$Res> {
  __$$SaveUserImplCopyWithImpl(
      _$SaveUserImpl _value, $Res Function(_$SaveUserImpl) _then)
      : super(_value, _then);

  /// Create a copy of MockEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? person = null,
  }) {
    return _then(_$SaveUserImpl(
      null == person
          ? _value.person
          : person // ignore: cast_nullable_to_non_nullable
              as Person,
    ));
  }

  /// Create a copy of MockEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PersonCopyWith<$Res> get person {
    return $PersonCopyWith<$Res>(_value.person, (value) {
      return _then(_value.copyWith(person: value));
    });
  }
}

/// @nodoc

class _$SaveUserImpl implements _SaveUser {
  const _$SaveUserImpl(this.person);

  @override
  final Person person;

  @override
  String toString() {
    return 'MockEvent.saveUser(person: $person)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SaveUserImpl &&
            (identical(other.person, person) || other.person == person));
  }

  @override
  int get hashCode => Object.hash(runtimeType, person);

  /// Create a copy of MockEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SaveUserImplCopyWith<_$SaveUserImpl> get copyWith =>
      __$$SaveUserImplCopyWithImpl<_$SaveUserImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getMock,
    required TResult Function(Person person) saveUser,
  }) {
    return saveUser(person);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getMock,
    TResult? Function(Person person)? saveUser,
  }) {
    return saveUser?.call(person);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getMock,
    TResult Function(Person person)? saveUser,
    required TResult orElse(),
  }) {
    if (saveUser != null) {
      return saveUser(person);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetMock value) getMock,
    required TResult Function(_SaveUser value) saveUser,
  }) {
    return saveUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetMock value)? getMock,
    TResult? Function(_SaveUser value)? saveUser,
  }) {
    return saveUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetMock value)? getMock,
    TResult Function(_SaveUser value)? saveUser,
    required TResult orElse(),
  }) {
    if (saveUser != null) {
      return saveUser(this);
    }
    return orElse();
  }
}

abstract class _SaveUser implements MockEvent {
  const factory _SaveUser(final Person person) = _$SaveUserImpl;

  Person get person;

  /// Create a copy of MockEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SaveUserImplCopyWith<_$SaveUserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$MockState {
  Person? get person => throw _privateConstructorUsedError;
  bool? get isLoading => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;

  /// Create a copy of MockState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MockStateCopyWith<MockState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MockStateCopyWith<$Res> {
  factory $MockStateCopyWith(MockState value, $Res Function(MockState) then) =
      _$MockStateCopyWithImpl<$Res, MockState>;
  @useResult
  $Res call({Person? person, bool? isLoading, String? error, String? message});

  $PersonCopyWith<$Res>? get person;
}

/// @nodoc
class _$MockStateCopyWithImpl<$Res, $Val extends MockState>
    implements $MockStateCopyWith<$Res> {
  _$MockStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MockState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? person = freezed,
    Object? isLoading = freezed,
    Object? error = freezed,
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      person: freezed == person
          ? _value.person
          : person // ignore: cast_nullable_to_non_nullable
              as Person?,
      isLoading: freezed == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  /// Create a copy of MockState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PersonCopyWith<$Res>? get person {
    if (_value.person == null) {
      return null;
    }

    return $PersonCopyWith<$Res>(_value.person!, (value) {
      return _then(_value.copyWith(person: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MockStateImplCopyWith<$Res>
    implements $MockStateCopyWith<$Res> {
  factory _$$MockStateImplCopyWith(
          _$MockStateImpl value, $Res Function(_$MockStateImpl) then) =
      __$$MockStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Person? person, bool? isLoading, String? error, String? message});

  @override
  $PersonCopyWith<$Res>? get person;
}

/// @nodoc
class __$$MockStateImplCopyWithImpl<$Res>
    extends _$MockStateCopyWithImpl<$Res, _$MockStateImpl>
    implements _$$MockStateImplCopyWith<$Res> {
  __$$MockStateImplCopyWithImpl(
      _$MockStateImpl _value, $Res Function(_$MockStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of MockState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? person = freezed,
    Object? isLoading = freezed,
    Object? error = freezed,
    Object? message = freezed,
  }) {
    return _then(_$MockStateImpl(
      person: freezed == person
          ? _value.person
          : person // ignore: cast_nullable_to_non_nullable
              as Person?,
      isLoading: freezed == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$MockStateImpl implements _MockState {
  const _$MockStateImpl(
      {this.person,
      this.isLoading = false,
      this.error = null,
      this.message = null});

  @override
  final Person? person;
  @override
  @JsonKey()
  final bool? isLoading;
  @override
  @JsonKey()
  final String? error;
  @override
  @JsonKey()
  final String? message;

  @override
  String toString() {
    return 'MockState(person: $person, isLoading: $isLoading, error: $error, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MockStateImpl &&
            (identical(other.person, person) || other.person == person) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, person, isLoading, error, message);

  /// Create a copy of MockState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MockStateImplCopyWith<_$MockStateImpl> get copyWith =>
      __$$MockStateImplCopyWithImpl<_$MockStateImpl>(this, _$identity);
}

abstract class _MockState implements MockState {
  const factory _MockState(
      {final Person? person,
      final bool? isLoading,
      final String? error,
      final String? message}) = _$MockStateImpl;

  @override
  Person? get person;
  @override
  bool? get isLoading;
  @override
  String? get error;
  @override
  String? get message;

  /// Create a copy of MockState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MockStateImplCopyWith<_$MockStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
