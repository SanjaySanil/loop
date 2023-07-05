import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:loop/views/pages/playlist_screen/playlist_screen.dart';
import 'package:loop/views/pages/songs_screen/songs_screen.dart';

import '../views/pages/home_screen/home_screen.dart';

class AppRoutes {
  static const String initialRoute = '/';
  static const String songsScreen = '/songs';
  static const String playListScreen = '/playList';
  static List<GetPage<dynamic>> getPages = [
    GetPage(
      name: AppRoutes.initialRoute,
      page: () => HomeScreen(),
    ),
    GetPage(
      name: AppRoutes.songsScreen,
      page: () => SongsScreen(),
    ),
    GetPage(
      name: AppRoutes.playListScreen,
      page: () => PlaylistScreen(),
    ),
  ];
}
