// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'author_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AuthorDto _$AuthorDtoFromJson(Map<String, dynamic> json) {
  return AuthorDto(
    name: json['name'] as String,
    date: DateTime.parse(json['date'] as String),
  );
}

Map<String, dynamic> _$AuthorDtoToJson(AuthorDto instance) => <String, dynamic>{
      'name': instance.name,
      'date': instance.date.toIso8601String(),
    };
