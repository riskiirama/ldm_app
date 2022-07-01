import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../components/theme.dart';

class ViewAnggotaPage extends StatefulWidget {
  @override
  State<ViewAnggotaPage> createState() => _ViewAnggotaPageState();
}

class _ViewAnggotaPageState extends State<ViewAnggotaPage> {
  final hidden = false.obs;

  String? select;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: blueColor,
          elevation: 0,
          title: Text('View User'),
        ),
        body: ListView(
          padding: EdgeInsets.all(20),
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                FormWidget('User', 'Jhon Doe'),
                FormWidget('Password', '******'),
                FormWidget('Email', 'riski@gmail.com'),
                FormWidget('Nomor Telepon', '089*****'),
                FormWidget('Level', 'Admin'),
                FormWidget('Jenis Kelamin', 'Laki - Laki'),
              ],
            ),
          ],
        ));
  }
}

class DropdownWidget extends StatelessWidget {
  String? title;
  String? value;
  DropdownWidget(this.title, this.value);
  @override
  Widget build(BuildContext context) {
    return DropdownMenuItem(
      child: Text(title.toString()),
      value: value ?? '',
    );
  }
}

class FormWidget extends StatelessWidget {
  final String? title;
  final String? hint;
  FormWidget(this.title, this.hint);
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title ?? '',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 10),
        TextFormField(
          readOnly: true,
          decoration: InputDecoration(
              fillColor: Colors.white,
              filled: true,
              contentPadding: EdgeInsets.all(10),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              hintText: hint ?? '',
              hintStyle: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black,
              )),
        ),
        SizedBox(height: 20),
      ],
    );
  }
}
