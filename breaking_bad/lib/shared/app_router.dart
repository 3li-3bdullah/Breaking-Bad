
import 'package:breaking_bad/shared/constants.dart';
import 'package:breaking_bad/view/characters_screen/characters_screen.dart';
import 'package:breaking_bad/view/details_screen/details_screen.dart';
import 'package:flutter/material.dart';

class AppRouter{

  Route? generateRoute(RouteSettings routeSettings){

    switch (routeSettings.name) {
      case charactersScreen:
        return MaterialPageRoute(builder: (_) => const CharactersScreen() );
        case detailsScreen :
        return MaterialPageRoute(builder: (_) => const DetailsScreen() );
      
    }
  }
}