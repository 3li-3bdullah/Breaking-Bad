import 'package:breaking_bad/business_logic/cubit/characters_cubit.dart';
import 'package:breaking_bad/shared/components/character_item.dart';
import 'package:breaking_bad/shared/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:breaking_bad/data/model/character.dart';

class CharactersScreen extends StatefulWidget {
  const CharactersScreen({Key? key}) : super(key: key);

  @override
  State<CharactersScreen> createState() => _CharactersScreenState();
}

class _CharactersScreenState extends State<CharactersScreen> {
  late List<Character> allCharacters;

  @override
  void initState() {
    super.initState();
    allCharacters =
        BlocProvider.of<CharactersCubit>(context).getAllCharacters();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: MyColors.myYellow,
        title: const Text(
          "Characters",
          style: TextStyle(color: MyColors.myGrey),
        ),
      ),
      body: BlocBuilder<CharactersCubit, CharactersState>(
        builder: (context, state) {
          if (state is CharactersLoaded) {
            allCharacters = (state).charactersList;
            return SingleChildScrollView(
              child: Container(
                color: MyColors.myGrey,
                child: Column(
                  children: [
                    GridView.builder(
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          crossAxisSpacing: 1,
                          mainAxisSpacing: 1,
                          childAspectRatio: 2 / 3,
                        ),
                        shrinkWrap: true,
                        physics: const ClampingScrollPhysics(),
                        padding: EdgeInsets.zero,
                        itemBuilder: (context, index) {
                          return CharacterItem();
                        })
                  ],
                ),
              ),
            );
          } else {
            return const Center(
              child: CircularProgressIndicator(
                color: MyColors.myYellow,
              ),
            );
          }
        },
      ),
    );
  }
}
