import '../features/health/health_screen.dart';
import '../features/home/homescreen.dart';
import '../features/navigation/navigation_view.dart';
import '../features/profile/profile_screen.dart';
import '../features/today/today_screen.dart';
import 'router.dart';
import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';

final _rootNavigatorKey = GlobalKey<NavigatorState>();
final _shellNavigatorKey = GlobalKey<NavigatorState>();

final router = GoRouter(
    navigatorKey: _rootNavigatorKey,
    initialLocation: Routes.homescreen.path,
    routes: [
      ShellRoute(
          parentNavigatorKey: _rootNavigatorKey,
          navigatorKey: _shellNavigatorKey,
          pageBuilder: (context, state, child) {
            int index = 0;


          if (state.fullPath == Routes.homescreen.path) {
            index = 0;
          } else if (state.fullPath == Routes.todayscreen.path) {
            index = 1;
          } else if (state.fullPath == Routes.healthscreen.path) {
            index = 2;
          } else if (state.fullPath == Routes.profilescreen.path) {
            index = 3;
          }

          return CupertinoPage(
            child: NavigationView(
              selectedIndex: index,
              child: child,
            ),
          );
          },
          routes: [
              GoRoute(
        path: Routes.homescreen.path,
        name: Routes.homescreen.name,
        pageBuilder: (context, state) =>
            const CupertinoPage(child: HomeScreen()),
      ),
      GoRoute(
        path: Routes.todayscreen.path,
        name: Routes.todayscreen.name,
        pageBuilder: (context, state) =>
            const CupertinoPage(child: TodayScreen()),
      ),
      GoRoute(
        path: Routes.healthscreen.path,
        name: Routes.healthscreen.name,
        pageBuilder: (context, state) =>
            const CupertinoPage(child: HealthScreen()),
      ),
      GoRoute(
        path: Routes.profilescreen.path,
        name: Routes.profilescreen.name,
        pageBuilder: (context, state) =>
            const CupertinoPage(child: ProfileScreen()),
      ),
          ]),
      // GoRoute(
      //   path: Routes.navigation.path,
      //   name: Routes.navigation.name,
      //   pageBuilder: (context, state) =>
      //       const CupertinoPage(child: NavigationView()),
      // ),
    
    ]);
