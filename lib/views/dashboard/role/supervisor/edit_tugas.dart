import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../components/theme.dart';

class EditTugasPage extends StatelessWidget {
  var hidden = false.obs;
  String? select;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: blueColor,
          elevation: 0,
          title: Text('Update Tugas'),
        ),
        body: ListView(
          padding: EdgeInsets.all(20),
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                FormWidget('Deskripsi Tugas', 'Deskripsi Tugas'),
                FormWidget('Detail Tugas', 'Detail Tugas'),
                FormWidget('Alamat', 'Alamat'),
                Text(
                  'Tanggal',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10),
                TextFormField(
                  onTap: () async {
                    await showDatePicker(
                        context: context,
                        initialDate: DateTime.now(),
                        firstDate: DateTime.now(),
                        lastDate: DateTime.now());
                  },
                  decoration: InputDecoration(
                    suffixIcon: Icon(Icons.date_range),
                    hintText: 'dd/mm/yyy',
                    fillColor: Colors.white,
                    filled: true,
                    contentPadding: EdgeInsets.all(10),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  'Upload File',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10),
                TextFormField(
                  onTap: () async {},
                  decoration: InputDecoration(
                    suffixIcon: Icon(Icons.file_copy),
                    hintText: 'file',
                    fillColor: Colors.white,
                    filled: true,
                    contentPadding: EdgeInsets.all(10),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                FormWidget('Nama Penanggung Jawab Lokasi', 'Nama'),
                FormWidget('Nomor Penangung Jawab Lokasi', '085**'),
                Text(
                  'Anggota',
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
                    hintText: 'Pilih Anggota',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  items: [
                    DropdownMenuItem(
                      child: Text('A'),
                      value: 'A',
                    ),
                    DropdownMenuItem(
                      child: Text('B'),
                      value: 'B',
                    ),
                    DropdownMenuItem(
                      child: Text('C'),
                      value: 'C',
                    ),
                  ],
                  onChanged: (value) {
                    select = value as String;
                  },
                ),
                SizedBox(height: 20),
                Text(
                  'Barang Yang Digunkanan',
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
                    hintText: 'Pilih Barang',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  items: [
                    DropdownMenuItem(
                      child: Text('A'),
                      value: 'A',
                    ),
                    DropdownMenuItem(
                      child: Text('B'),
                      value: 'B',
                    ),
                    DropdownMenuItem(
                      child: Text('C'),
                      value: 'C',
                    ),
                  ],
                  onChanged: (value) {
                    select = value as String;
                  },
                ),
                SizedBox(height: 20),
                Text(
                  'Progress Teknisi',
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
                      child: Text('Progress'),
                      value: 'Progress',
                    ),
                    DropdownMenuItem(
                      child: Text('Pending'),
                      value: 'Pending',
                    ),
                    DropdownMenuItem(
                      child: Text('Done'),
                      value: 'Done',
                    ),
                  ],
                  onChanged: (value) {
                    select = value as String;
                  },
                ),
                SizedBox(height: 20),
                Text(
                  'Progress Supervisor',
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
                    hintText: '',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  items: [
                    DropdownMenuItem(
                      child: Text('Progress'),
                      value: 'Progress',
                    ),
                    DropdownMenuItem(
                      child: Text('Pending'),
                      value: 'Pending',
                    ),
                    DropdownMenuItem(
                      child: Text('Done'),
                      value: 'Done',
                    ),
                  ],
                  onChanged: (value) {
                    select = value as String;
                  },
                ),
                SizedBox(height: 20),
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
                      child: Text('Update'),
                    ),
                  ),
                ),
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
  FormWidget(this.title, this.hint);
  String? title;
  String? hint;

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
