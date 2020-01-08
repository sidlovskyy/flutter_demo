import 'dart:convert';

import 'package:flutter_demo/models/commit.dart';
import 'package:http/http.dart' as http;

import './dto/commit_entry_dto.dart';

class GithubApi {
  static Future<List<Commit>> fetchCommits(String owner, String repo) async {
    final response = await http.get('https://api.github.com/repos/$owner/$repo/commits');
    final Iterable items = json.decode(response.body);
    return items
        .map((map) => CommitEntryDto.fromJson(map))
        .map(
          (dto) => Commit(
            hash: dto.sha3,
            message: dto.commit.message,
            author: dto.commit.author.name,
            date: dto.commit.author.date,
          ),
        )
        .toList();
  }
}
