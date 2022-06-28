import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ldm_app/components/theme.dart';

class ViewTugasPage extends StatelessWidget {
  const ViewTugasPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bg,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: InkWell(
          borderRadius: BorderRadius.circular(100),
          onTap: () {
            Get.back();
          },
          child: Icon(
            Icons.arrow_back_rounded,
            color: Colors.black,
            size: 34,
          ),
        ),
        backgroundColor: bg,
        title: Text(
          'View Tugas',
          style: blackStyle,
        ),
        elevation: 0,
      ),
    );
  }
}
