import 'package:breaking_bad/data/model/character.dart';
import 'package:breaking_bad/data/web_services/charachters_web_services.dart';

class CharactersRepo {
  CharactersRepo(this.charactersWebServices);

  final CharactersWebServices charactersWebServices;

  Future<List<Character>> getAllCharactersData() async {
    final characters = await charactersWebServices.getAllCharacters();
    return characters
        .map((character) => Character.fromJson(character))
        .toList();
  }
}
