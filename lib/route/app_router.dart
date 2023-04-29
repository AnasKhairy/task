import 'package:auto_route/auto_route.dart';
import 'package:task_number_one/pages/HomePage.dart';
import 'package:task_number_one/pages/loginPage.dart';
import 'package:task_number_one/pages/pageOne.dart';

part 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: HomeRoute.page, initial: true),
        AutoRoute(
          page: RouteOne.page,
        ),
        AutoRoute(page: Login.page),
      ];
}
