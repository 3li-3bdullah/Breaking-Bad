import 'package:breaking_bad/data/model/characters.dart';
import 'package:breaking_bad/data/web_services/charachters_web_services.dart';

class CharactersRepo {
  CharactersRepo(this.charactersWebServices);

  final CharactersWebServices charactersWebServices;

  Future<List<dynamic>> getCharactersData() async {
    final characters = await charactersWebServices.getAllCharacters();
    return characters
        .map((character) => Characters.fromJson(character))
        .toList();
  }
}
