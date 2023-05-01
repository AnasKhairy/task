import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:task_number_one/route/app_router.dart';

@RoutePage()
class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      routes: const [
        HomeRoute(),
        LogOutRoute(),
        // UsersRoute(),
        // PostsRoute(),
        // SettingsRoute(),
      ],
      bottomNavigationBuilder: (_, tabsRouter) {
        return BottomNavigationBar(
          currentIndex: tabsRouter.activeIndex,
          onTap: tabsRouter.setActiveIndex,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.logout),
              label: 'Log Out',
            ),
            // BottomNavigationBarItem(label: 'Users',...),
            // BottomNavigationBarItem(label: 'Posts',...),
            // BottomNavigationBarItem(label: 'Settings',...),
          ],
        );
      },
    );
  }
}
