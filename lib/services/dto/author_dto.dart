import 'package:json_annotation/json_annotation.dart';

part 'author_dto.g.dart';

@JsonSerializable(nullable: false)
class AuthorDto {
  final String name;
  final DateTime date;

  AuthorDto({this.name, this.date});

  factory AuthorDto.fromJson(Map<String, dynamic> json) => _$AuthorDtoFromJson(json);

  Map<String, dynamic> toJson() => _$AuthorDtoToJson(this);
}
