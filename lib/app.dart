import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import 'routes/app_router.gr.dart';

final navigatorKey = GlobalKey<NavigatorState>();
final routeObserver = AutoRouteObserver();
final appRouter = AppRouter();

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Flutter Tutorial',
      debugShowCheckedModeBanner: false,
      routeInformationProvider: appRouter.routeInfoProvider(),
      routeInformationParser: appRouter.defaultRouteParser(),
      routerDelegate: appRouter.delegate(
        initialRoutes: [const HomeRoute()],
        navigatorObservers: () => [routeObserver],
      ),
    );
  }
}
