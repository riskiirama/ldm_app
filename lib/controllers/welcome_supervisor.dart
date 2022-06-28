import 'package:get/get.dart';

import 'package:ldm_app/views/dashboard/role/supervisor/barang.dart';
import 'package:ldm_app/views/dashboard/role/supervisor/penugasan.dart';

import '../views/dashboard/role/supervisor/home_page.dart';
import '../views/dashboard/role/supervisor/profil.dart';

class WelcomeSupervisor extends GetxController {
  var currentIndex = 0.obs;

  var screens = [
    HomePage(),
    PenugasanPage(),
    BarangPage(),
    ProfilePage(),
  ];
}
