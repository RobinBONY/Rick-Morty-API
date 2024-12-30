import 'package:flutter_application/src/models/character.dart';
import 'package:flutter_application/src/models/info.dart';

class CharactersResponse {
  final Info info;
  final List<Character> results;

  CharactersResponse({
    required this.info,
    required this.results,
  });

  // Factory method for JSON deserialization
  factory CharactersResponse.fromJson(Map<String, dynamic> json) {
    return CharactersResponse(
      info: Info.fromJson(json['info']),
      results: (json['results'] as List)
          .map((item) => Character.fromJson(item))
          .toList(),
    );
  }

  // Method for JSON serialization
  Map<String, dynamic> toJson() {
    return {
      'info': info.toJson(),
      'results': results.map((character) => character.toJson()).toList(),
    };
  }
}