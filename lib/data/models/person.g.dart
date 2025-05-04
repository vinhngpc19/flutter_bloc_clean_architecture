// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'person.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PersonImpl _$$PersonImplFromJson(Map<String, dynamic> json) => _$PersonImpl(
      id: (json['id'] as num?)?.toInt() ?? 0,
      firstName: json['firstName'] as String?,
      lastName: json['lastName'] as String?,
      age: (json['age'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$PersonImplToJson(_$PersonImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'age': instance.age,
    };
