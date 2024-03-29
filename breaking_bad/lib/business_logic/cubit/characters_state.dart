part of 'characters_cubit.dart';

@immutable
abstract class CharactersState {}

class CharactersInitial extends CharactersState {}

class CharactersLoaded extends CharactersState {
  CharactersLoaded(this.charactersList);

  final List<Character> charactersList;
}