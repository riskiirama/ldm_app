import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ldm_app/components/theme.dart';
import 'package:ldm_app/views/dashboard/role/supervisor/add.dart';

import '../../../../controllers/welcome_supervisor.dart';

class WelcomeSupervisorPage extends StatelessWidget {
  final welcomeController = Get.put(WelcomeSupervisor());
  @override
  Widget build(BuildContext context) {
    Widget cartButton() {
      return FloatingActionButton(
        backgroundColor: blueColor,
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => AddPage()));
        },
        child: Icon(Icons.add),
      );
    }

    Widget customBottomNav() {
      return BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 12,
        clipBehavior: Clip.antiAlias,
        child: BottomNavigationBar(
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
                ),
              ),
              label: 'Penugasan',
            ),
            BottomNavigationBarItem(
              icon: Container(
                margin: EdgeInsets.only(
                  top: 20,
                  bottom: 10,
                ),
                child: Icon(
                  Icons.notifications,
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
        backgroundColor: Color(0xffF1F2F7),
        floatingActionButton: cartButton(),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: customBottomNav(),
        body: welcomeController.screens[welcomeController.currentIndex.value],
        /*    bottomNavigationBar: BottomNavigationBar(
          backgroundColor: blueColor,
          
          selectedItemColor: Colors.white,
          type: BottomNavigationBarType.fixed,
          currentIndex: welcomeController.currentIndex.value,
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.date_range_outlined,
              ),
              label: 'Penugasan',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.shop,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.notifications,
              ),
              label: 'Barang',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.person_outline_outlined,
              ),
              label: 'Profil',
            ),
          ],
          onTap: (index) {
            welcomeController.currentIndex.value = index;
          },
        ),
        */
      );
    });
  }
}
