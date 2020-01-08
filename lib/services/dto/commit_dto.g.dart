// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'commit_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CommitDto _$CommitDtoFromJson(Map<String, dynamic> json) {
  return CommitDto(
    message: json['message'] as String,
    author: AuthorDto.fromJson(json['author'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$CommitDtoToJson(CommitDto instance) => <String, dynamic>{
      'message': instance.message,
      'author': instance.author,
    };
