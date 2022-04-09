import 'package:breaking_bad/constants/strings.dart';
import 'package:breaking_bad/view/screens/home.dart';
import 'package:breaking_bad/view/screens/details_screen.dart';
import 'package:flutter/material.dart';

class AppRouter {
  Route? generateRouters(RouteSettings settings) {
    switch (settings.name) {
      case home:
        return MaterialPageRoute(builder: (_) => const Home());
      case detailsScreen:
        return MaterialPageRoute(builder: (_) => const DetailsScreen());
    }
    return null;
  }
}
