import 'package:flutter_demo/services/dto/commit_dto.dart';
import 'package:json_annotation/json_annotation.dart';

part 'commit_entry_dto.g.dart';

@JsonSerializable(nullable: false)
class CommitEntryDto {
  final String sha3;
  final CommitDto commit;

  CommitEntryDto({this.sha3, this.commit});

  factory CommitEntryDto.fromJson(Map<String, dynamic> json) => _$CommitEntryDtoFromJson(json);

  Map<String, dynamic> toJson() => _$CommitEntryDtoToJson(this);
}