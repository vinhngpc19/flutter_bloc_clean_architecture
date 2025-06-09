import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';

part 'person.freezed.dart';
part 'person.g.dart';

@freezed
@HiveType(typeId: 0)
abstract class Person with _$Person {
  const Person._();

  const factory Person({
    @HiveField(0) @Default(0) int id,
    @HiveField(1) String? firstName,
    @HiveField(2) String? lastName,
    @HiveField(3) int? age,
  }) = _Person;

  factory Person.fromJson(Map<String, Object?> json) => _$PersonFromJson(json);
}
