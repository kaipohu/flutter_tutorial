import 'package:auto_route/auto_route.dart';

import '../pages/home_page/home_page.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: [
    AutoRoute<void>(
      page: HomePage,
      name: 'HomeRoute',
      path: '/home',
    ),
  ],
)
class $AppRouter {}
