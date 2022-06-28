import 'package:get/get.dart';
import 'package:ldm_app/views/auth/login.dart';
import 'package:ldm_app/views/dashboard/role/role_page.dart';
import 'package:ldm_app/views/splash_page.dart';

import '../views/dashboard/role/supervisor/welcome_supervisor.dart';

class RouteHelper {
  static String splash = '/';
  static String login = '/login';
  static String role = '/role';
  static String welcome_admin = '/welcome_admin';
  static String welcome_bos = '/welcome_bos';
  static String welcome_gudang = '/welcome_gudang';
  static String welcome_supervisor = '/welcome_supervisor';
  static String welcome_teknisi = '/welcome_teknisi';

  static List<GetPage> routes = [
    GetPage(name: splash, page: () => SplashPage()),
    GetPage(name: login, page: () => LoginPage()),
    GetPage(name: role, page: () => RolePage()),
    GetPage(name: welcome_supervisor, page: () => WelcomeSupervisorPage()),
  ];
}
