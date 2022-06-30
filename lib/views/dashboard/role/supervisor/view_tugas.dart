import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../components/theme.dart';

class ViewTugasPage extends StatelessWidget {
  final hidden = false.obs;
  String? select;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: blueColor,
          elevation: 0,
          title: Text('View Tugas'),
        ),
        body: ListView(
          padding: EdgeInsets.all(20),
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                FormWidget('Deskripsi Tugas', 'Deskripsi Tugas'),
                Text(
                  'Detail Tugas',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 6),
                TextFormField(
                  maxLines: 5,
                  decoration: InputDecoration(
                    contentPadding:
                        EdgeInsets.only(left: 12, right: 12, top: 12),
                    hintText: 'Detail',
                    fillColor: Colors.white,
                    filled: true,
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                SizedBox(
                  height: 28,
                ),
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
