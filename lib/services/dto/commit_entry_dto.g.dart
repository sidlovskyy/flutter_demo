// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'commit_entry_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CommitEntryDto _$CommitEntryDtoFromJson(Map<String, dynamic> json) {
  return CommitEntryDto(
    sha: json['sha'] as String,
    commit: CommitDto.fromJson(json['commit'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$CommitEntryDtoToJson(CommitEntryDto instance) =>
    <String, dynamic>{
      'sha': instance.sha,
      'commit': instance.commit,
    };
