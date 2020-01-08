// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'commit_entry_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CommitEntryDto _$CommitEntryDtoFromJson(Map<String, dynamic> json) {
  return CommitEntryDto(
    sha3: json['sha3'] as String,
    commit: CommitDto.fromJson(json['commit'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$CommitEntryDtoToJson(CommitEntryDto instance) =>
    <String, dynamic>{
      'sha3': instance.sha3,
      'commit': instance.commit,
    };
