import 'package:breaking_bad/business_logic/cubit/characters_cubit.dart';
import 'package:breaking_bad/data/repository/characters_repo.dart';
import 'package:breaking_bad/data/web_services/charachters_web_services.dart';
import 'package:breaking_bad/shared/constants.dart';
import 'package:breaking_bad/view/characters_screen/characters_screen.dart';
import 'package:breaking_bad/view/details_screen/details_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppRouter {
  late CharactersRepo charactersRepo;
  late CharactersCubit charactersCubit;

  AppRouter() {
    charactersRepo = CharactersRepo(CharactersWebServices());
    charactersCubit = CharactersCubit(charactersRepo);
  }

  Route? generateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case charactersScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (BuildContext context) => CharactersCubit(charactersRepo),
            child: const CharactersScreen(),
          ),
        );
      case detailsScreen:
        return MaterialPageRoute(
          builder: (_) => const DetailsScreen(),
        );
    }
    return null;
  }
}
