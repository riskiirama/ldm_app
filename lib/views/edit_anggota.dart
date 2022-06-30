import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../components/theme.dart';

class EditAnggotaPage extends StatefulWidget {
  @override
  State<EditAnggotaPage> createState() => _EditAnggotaPageState();
}

class _EditAnggotaPageState extends State<EditAnggotaPage> {
  final hidden = false.obs;

  String? select;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: blueColor,
          elevation: 0,
          title: Text('Edit Anggota'),
        ),
        body: ListView(
          padding: EdgeInsets.all(20),
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                FormWidget('User', 'User'),
                FormWidget('Password', 'Password'),
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
                      child: Text('Ubah'),
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
