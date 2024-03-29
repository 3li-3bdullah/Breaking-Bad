import 'package:bloc/bloc.dart';
import 'package:breaking_bad/data/model/character.dart';
import 'package:breaking_bad/data/repository/characters_repo.dart';
import 'package:meta/meta.dart';

part 'characters_state.dart';

class CharactersCubit extends Cubit<CharactersState> {
  CharactersCubit(this.charactersRepo) : super(CharactersInitial());

  final CharactersRepo charactersRepo;
  late List<Character> characters;

  List<Character> getAllCharacters(){
    charactersRepo.getAllCharactersData().then((characters) {
      emit(CharactersLoaded(characters));
      this.characters = characters;
    });
    return characters;
  }
}
