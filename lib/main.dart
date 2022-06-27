import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ldm_app/routes/route_app.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      getPages: RouteHelper.routes,
    );
  }
}
