// ignore_for_file: public_member_api_docs, sort_constructors_first
class AppRouter {
  String name;
  String path;
  AppRouter({
    required this.name,
    required this.path,
  });
}

class Routes {
  static AppRouter navigation = AppRouter(name: "/Navigation", path: "/nav");
  static AppRouter homescreen = AppRouter(name: "/homescreen", path: "/");
  static AppRouter todayscreen =
      AppRouter(name: "/todayscreen", path: "/todayscreen");
  static AppRouter healthscreen =
      AppRouter(name: "/healthscreen", path: "/healthscreen");
  static AppRouter profilescreen =
      AppRouter(name: "/profilescreen", path: "/profilescreen");
}
