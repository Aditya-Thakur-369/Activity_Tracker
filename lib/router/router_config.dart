import 'package:activity_tracker/features/home/homescreen.dart';
import 'package:activity_tracker/router/router.dart';
import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';

final router = GoRouter(routes: [
  GoRoute(
    path: Routes.homescreen.path,
    name: Routes.homescreen.name,
    pageBuilder: (context, state) => const CupertinoPage(child: HomeScreen()),
  ),
]);
