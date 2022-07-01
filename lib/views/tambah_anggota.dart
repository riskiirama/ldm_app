import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../components/theme.dart';

class TambahAnggotaPage extends StatefulWidget {
  @override
  State<TambahAnggotaPage> createState() => _TambahAnggotaPageState();
}

class _TambahAnggotaPageState extends State<TambahAnggotaPage> {
  final hidden = false.obs;

  String? select;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: blueColor,
          elevation: 0,
          title: Text('Tambah User'),
        ),
        body: ListView(
          padding: EdgeInsets.all(20),
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                FormWidget('User', 'User'),
                Text(
                  'Password',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10),
                Obx(() {
                  return TextFormField(
                    obscureText: hidden.value,
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      contentPadding: EdgeInsets.all(10),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      hintText: 'Password',
                      suffixIcon: IconButton(
                        onPressed: () => hidden.toggle(),
                        icon: hidden.isTrue
                            ? Icon(Icons.remove_red_eye)
                            : Icon(
                                Icons.remove_red_eye_outlined,
                                color: Colors.grey,
                              ),
                      ),
                    ),
                  );
                }),
                SizedBox(height: 20),
                FormWidget('Email', 'Email'),
                FormWidget('Nomor Telepon', 'Nomor Telepon'),
                Text(
                  'Level',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10),
                DropdownButtonFormField(
                  value: select,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    contentPadding: EdgeInsets.all(10),
                    hintText: 'Select',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  items: [
                    DropdownMenuItem(
                      child: Text('Admin'),
                      value: 'Admin',
                    ),
                    DropdownMenuItem(
                      child: Text('Supervisor'),
                      value: 'Supervisor',
                    ),
                    DropdownMenuItem(
                      child: Text('Teknisi'),
                      value: 'Teknisi',
                    ),
                    DropdownMenuItem(
                      child: Text('Gudang'),
                      value: 'Gudang',
                    ),
                    DropdownMenuItem(
                      child: Text('Boss'),
                      value: 'Boss',
                    ),
                  ],
                  onChanged: (value) {
                    select = value as String;
                  },
                ),
                SizedBox(height: 20),
                Text(
                  'Jenis Kelamin',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10),
                DropdownButtonFormField(
                  value: select,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    contentPadding: EdgeInsets.all(10),
                    hintText: 'Select',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  items: [
                    DropdownMenuItem(
                      child: Text('Laki - Laki'),
                      value: 'Laki - Laki',
                    ),
                    DropdownMenuItem(
                      child: Text('Perempuan'),
                      value: 'Perempuan',
                    ),
                  ],
                  onChanged: (value) {
                    select = value as String;
                  },
                ),
                SizedBox(height: 30),
                Center(
                  child: Container(
                    width: Get.width / 2,
                    height: 40,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: blueColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      onPressed: () {},
                      child: Text('Tambah'),
                    ),
                  ),
                )
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
          decoration: InputDecoration(
            fillColor: Colors.white,
            filled: true,
            contentPadding: EdgeInsets.all(10),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            hintText: hint ?? '',
          ),
        ),
        SizedBox(height: 20),
      ],
    );
  }
}
