import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:ldm_app/components/theme.dart';
import 'package:ldm_app/views/tambah_anggota.dart';
import 'package:ldm_app/views/tambah_barang_gudang.dart';
import 'package:ldm_app/views/tambah_tugas.dart';
import 'package:ldm_app/views/anggota_page.dart';
import 'package:ldm_app/views/barang.dart';
import 'package:ldm_app/views/home_page.dart';
import 'package:ldm_app/views/penugasan.dart';
import 'package:ldm_app/views/profil.dart';
import '../../../../controllers/welcome_supervisor.dart';

class WelcomeSupervisorPage extends StatefulWidget {
  @override
  State<WelcomeSupervisorPage> createState() => _WelcomeSupervisorPageState();
}

class _WelcomeSupervisorPageState extends State<WelcomeSupervisorPage> {
  final welcomeController = Get.put(WelcomeSupervisor());

  var box = GetStorage();

  @override
  Widget build(BuildContext context) {
    Widget cartButton() {
      return FloatingActionButton(
        enableFeedback: true,
        backgroundColor: blueColor,
        onPressed: () {
          box.read('key')['role'] == 'gudang'
              ? Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => TambahBarangGudangPage()))
              : box.read('key')['role'] == 'supervisor'
                  ? Navigator.push(context,
                      MaterialPageRoute(builder: (context) => TambahTugas()))
                  : Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => TambahAnggotaPage()));
        },
        child: Icon(Icons.add),
      );
    }

    Widget customBottomNav() {
      return BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 12,
        clipBehavior: Clip.antiAlias,
        child: box.read('key')['role'] == 'teknisi'
            ? BottomNavigationBar(
                onTap: (index) {
                  welcomeController.currentIndex.value = index;
                },
                selectedItemColor: Colors.white,
                backgroundColor: Color(0xFF7879F1),
                type: BottomNavigationBarType.fixed,
                currentIndex: welcomeController.currentIndex.value,
                items: [
                  BottomNavigationBarItem(
                    icon: Container(
                      margin: EdgeInsets.only(top: 20, bottom: 10),
                      child: Icon(
                        Icons.home,
                      ),
                    ),
                    label: 'Home',
                  ),
                  BottomNavigationBarItem(
                      icon: Container(
                          margin: EdgeInsets.only(
                            top: 20,
                            bottom: 10,
                          ),
                          child: Icon(
                            Icons.date_range_outlined,
                          )),
                      label: 'Penugasan'),
                  BottomNavigationBarItem(
                      icon: Icon(
                        Icons.person_outline,
                        size: 1,
                      ),
                      label: ''),
                  BottomNavigationBarItem(
                    icon: Container(
                      margin: EdgeInsets.only(
                        top: 20,
                        bottom: 10,
                      ),
                      child: Icon(
                        Icons.person_outline_outlined,
                      ),
                    ),
                    label: 'Profile',
                  ),
                ],
              )
            : BottomNavigationBar(
                onTap: (index) {
                  welcomeController.currentIndex.value = index;
                },
                selectedItemColor: Colors.white,
                backgroundColor: Color(0xFF7879F1),
                type: BottomNavigationBarType.fixed,
                currentIndex: welcomeController.currentIndex.value,
                items: [
                  BottomNavigationBarItem(
                    icon: Container(
                      margin: EdgeInsets.only(top: 20, bottom: 10),
                      child: Icon(
                        Icons.home,
                      ),
                    ),
                    label: 'Home',
                  ),
                  box.read('key')['role'] == 'gudang'
                      ? BottomNavigationBarItem(
                          icon: Icon(
                            Icons.person_outline,
                            size: 1,
                          ),
                          label: '')
                      : BottomNavigationBarItem(
                          icon: Container(
                            margin: EdgeInsets.only(
                              top: 20,
                              bottom: 10,
                            ),
                            child: box.read('key')['role'] != 'admin'
                                ? Icon(
                                    Icons.date_range_outlined,
                                  )
                                : Icon(
                                    Icons.group,
                                  ),
                          ),
                          label: box.read('key')['role'] != 'admin'
                              ? 'Penugasan'
                              : 'Anggota',
                        ),
                  BottomNavigationBarItem(
                    icon: Container(
                      margin: EdgeInsets.only(
                        top: 20,
                        bottom: 10,
                      ),
                      child: Image.asset(
                        'assets/icons/cube.png',
                        height: 30,
                        color: welcomeController.currentIndex.value == 2
                            ? Colors.white
                            : Colors.black,
                      ),
                    ),
                    label: 'Barang',
                  ),
                  BottomNavigationBarItem(
                    icon: Container(
                      margin: EdgeInsets.only(
                        top: 20,
                        bottom: 10,
                      ),
                      child: Icon(
                        Icons.person_outline_outlined,
                      ),
                    ),
                    label: 'Profile',
                  ),
                ],
              ),
      );
    }

    return Obx(() {
      return Scaffold(
        extendBody: true,
        primary: true,
        resizeToAvoidBottomInset: false,
        backgroundColor: Color(0xffF1F2F7),
        floatingActionButton: cartButton(),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: customBottomNav(),
        body: welcomeController.currentIndex.value == 0
            ? HomePage()
            : welcomeController.currentIndex.value == 1
                ? box.read('key')['role'] == 'admin'
                    ? AnggotaPage()
                    : PenugasanPage()
                : welcomeController.currentIndex.value == 2
                    ? BarangPage()
                    : welcomeController.currentIndex.value == 3
                        ? ProfilePage()
                        : ProfilePage(),
      );
    });
  }
}
