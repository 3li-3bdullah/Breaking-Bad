import 'package:breaking_bad/data/model/character.dart';
import 'package:breaking_bad/shared/constants.dart';
import 'package:flutter/material.dart';

class CharacterItem extends StatelessWidget {
  const CharacterItem({Key? key, required this.character}) : super(key: key);

  final Character character;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsetsDirectional.fromSTEB(8, 8, 8, 8),
      padding: const EdgeInsetsDirectional.all(4),
      decoration: const BoxDecoration(
        color: MyColors.myWhite,
        borderRadius: BorderRadius.all(
          Radius.circular(8),
        ),
      ),
      child: GridTile(
        footer: Container(
        color: Colors.black54,
        alignment: Alignment.bottomCenter,
        width: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 10),
        child: Text("${character.name}",
        style: const TextStyle(
          height: 1.3,
          color: MyColors.myWhite,
          fontSize: 16,
          fontWeight: FontWeight.bold
        ),
        textAlign: TextAlign.center,
        overflow: TextOverflow.ellipsis,
        maxLines: 2,
        ),
        ),
        child: Container(
          color: MyColors.myGrey,
          child: character.image!.isNotEmpty
              ? FadeInImage.assetNetwork(
                  placeholder: "assets/images/loading.gif",
                  image: character.image.toString(),
                  height: double.infinity,
                  width: double.infinity,
                  fit: BoxFit.cover,
                )
              : Image.asset("assets/images/no_image.png"),
        ),
      ),
    );
  }
}
