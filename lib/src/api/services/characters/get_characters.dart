import 'package:flutter_application/src/api/services/service.dart';

import '../../../../rick_and_morty_api.dart';
import '../../enums.dart';

class CharacterService extends Service {

  Future<List<Character>> getCharactersPage(int page) async {
    var prefs =
        '?page=$page';

    List<Map<String, dynamic>> objects = await super.get(
        '${Constants.baseURL}${Constants.characterEndpoint}$prefs');
    print(objects);
    return List<Character>.from(objects.map((x) => Character.fromJson(x)));
  }

  Future<List<Character>> getFilteredCharacters(
      CharacterFilters filters) async {
    var prefs =
        '?name=${filters.name}&status=${characterStatusValues[filters.status]}&gender=${characterGenderValues[filters.gender]}&type=${filters.type}&species=${characterSpeciesValues[filters.species]}';

    List<Map<String, dynamic>> objects = await super.get(
        '${Constants.baseURL}${Constants.characterEndpoint}$prefs');

    return List<Character>.from(objects.map((x) => Character.fromJson(x)));
  }
}

class CharacterFilters {
  final String? name;
  final CharacterStatus? status;
  final CharacterSpecies? species;
  final String? type;
  final CharacterGender? gender;

  CharacterFilters({
    this.name = '',
    this.status = CharacterStatus.empty,
    this.species = CharacterSpecies.empty,
    this.type = '',
    this.gender = CharacterGender.empty,
  });
}