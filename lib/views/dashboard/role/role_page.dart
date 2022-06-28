import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ldm_app/components/theme.dart';
import 'package:ldm_app/routes/route_app.dart';

class RolePage extends StatelessWidget {
  const RolePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              style: TextButton.styleFrom(
                primary: Colors.white,
                backgroundColor: blueColor,
                padding: EdgeInsets.symmetric(horizontal: 50, vertical: 10),
              ),
              onPressed: () {},
              child: Text('Admin'),
            ),
            SizedBox(height: 20),
            TextButton(
              style: TextButton.styleFrom(
                primary: Colors.white,
                backgroundColor: blueColor,
                padding: EdgeInsets.symmetric(horizontal: 60, vertical: 10),
              ),
              onPressed: () {},
              child: Text('Bos'),
            ),
            SizedBox(height: 20),
            TextButton(
              style: TextButton.styleFrom(
                primary: Colors.white,
                backgroundColor: blueColor,
                padding: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
              ),
              onPressed: () {
                Get.toNamed(RouteHelper.welcome_supervisor);
              },
              child: Text('Supervisor'),
            ),
            SizedBox(height: 20),
            TextButton(
              style: TextButton.styleFrom(
                primary: Colors.white,
                backgroundColor: blueColor,
                padding: EdgeInsets.symmetric(horizontal: 50, vertical: 10),
              ),
              onPressed: () {},
              child: Text('Teknisi'),
            ),
            SizedBox(height: 20),
            TextButton(
              style: TextButton.styleFrom(
                primary: Colors.white,
                backgroundColor: blueColor,
                padding: EdgeInsets.symmetric(horizontal: 50, vertical: 10),
              ),
              onPressed: () {},
              child: Text('Gudang'),
            ),
          ],
        ),
      ),
    );
  }
}
