import 'package:breaking_bad/view/screens/charactrers_screen.dart';
import 'package:flutter/material.dart';

class AppRouter{
  Route? generateRouters(RouteSettings settings){
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => const CharactersScreen());
    }
    return null;
    
  }
}