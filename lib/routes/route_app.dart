import 'package:get/get.dart';
import 'package:ldm_app/views/auth/login.dart';
import 'package:ldm_app/views/splash_page.dart';

import '../views/welcome_page.dart';

class RouteHelper {
  static String splash = '/';
  static String login = '/login';
  static String welcome = '/welcome';

  static List<GetPage> routes = [
    GetPage(name: splash, page: () => SplashPage()),
    GetPage(name: login, page: () => LoginPage()),
    GetPage(name: welcome, page: () => WelcomePage()),
  ];
}
