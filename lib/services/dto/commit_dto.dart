import 'package:json_annotation/json_annotation.dart';

import 'author_dto.dart';

part 'commit_dto.g.dart';

@JsonSerializable(nullable: false)
class CommitDto {
  final String message;
  final AuthorDto author;

  CommitDto({this.message, this.author});

  factory CommitDto.fromJson(Map<String, dynamic> json) => _$CommitDtoFromJson(json);

  Map<String, dynamic> toJson() => _$CommitDtoToJson(this);
}
