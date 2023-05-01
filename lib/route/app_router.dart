import 'package:auto_route/auto_route.dart';
import 'package:task_number_one/pages/page_one_page.dart';

import '../pages/home_page.dart';
import '../pages/login_page.dart';

part 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: LoginRoute.page, initial: true),
        AutoRoute(page: HomeRoute.page),
        AutoRoute(page: RouteOneRoute.page),
      ];
}
