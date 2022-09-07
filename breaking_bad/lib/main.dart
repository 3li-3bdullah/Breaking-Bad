import 'package:breaking_bad/shared/app_router.dart';
import 'package:breaking_bad/view/characters_screen/characters_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(BreakingBad(appRouter: AppRouter(),));
}

class BreakingBad extends StatelessWidget {
  const BreakingBad({Key? key, required this.appRouter}) : super(key: key);
  final AppRouter appRouter;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: appRouter.generateRoute,
    );
  }
}