import 'package:breaking_bad/app_router.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(BreakingBad(appRouter: AppRouter()));
}

class BreakingBad extends StatelessWidget {
  const BreakingBad({Key? key, required this.appRouter}) : super(key: key);

  final AppRouter appRouter;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
     onGenerateRoute: appRouter.generateRouters,
    );
  }
}
