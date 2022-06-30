import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../components/theme.dart';

class ViewBarangPage extends StatelessWidget {
  var hidden = false.obs;
  String? select;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: blueColor,
        elevation: 0,
        title: Text('View Barang'),
      ),
      body: ListView(
        padding: EdgeInsets.all(20),
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              FormWidget('Nama Barang', 'TP-LINK TL-WR940N'),
              Text(
                'Deskripsi Barang',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 6),
              TextFormField(
                maxLines: 5,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.only(left: 12, right: 12, top: 12),
                  hintText:
                      'TP-LINK TL-WR940N 450 Mbps Wireless N Router Wi-Fi Routers',
                  fillColor: Colors.white,
                  filled: true,
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              FormWidget('Harga Barang', 'Rp. 600.000'),
              Text(
                'Upload File',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 6),
              TextFormField(
                maxLines: 5,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.only(left: 12, right: 12, top: 12),
                  hintText:
                      'TP-LINK TL-WR940N 450 Mbps Wireless N Router Wi-Fi Routers',
                  fillColor: Colors.white,
                  filled: true,
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              SizedBox(height: 10),
              FormWidget('Berat Barang', 'Kg. 0.15'),
              FormWidget('Stock', '8'),
            ],
          ),
        ],
      ),
    );
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
