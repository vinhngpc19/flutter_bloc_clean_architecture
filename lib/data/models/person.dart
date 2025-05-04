import 'package:freezed_annotation/freezed_annotation.dart';

part 'person.freezed.dart';
part 'person.g.dart';

@freezed
class Person with _$Person {
  const Person._();

  const factory Person({
    @Default(0) int id,
    String? firstName,
    String? lastName,
    int? age,
  }) = _Person;

  factory Person.fromJson(Map<String, Object?> json) => _$PersonFromJson(json);
}
