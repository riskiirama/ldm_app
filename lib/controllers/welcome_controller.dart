import 'package:get/get.dart';
import 'package:ldm_app/views/dashboard/add.dart';
import 'package:ldm_app/views/dashboard/barang.dart';
import 'package:ldm_app/views/dashboard/penugasan.dart';

import '../views/dashboard/home_page.dart';
import '../views/dashboard/profil.dart';

class WelcomeController extends GetxController {
  var currentIndex = 0.obs;

  var screens = [
    HomePage(),
    PenugasanPage(),
    AddPage(),
    BarangPage(),
    ProfilePage(),
  ];
}
