import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:ldm_app/views/view_barang.dart';
import 'package:ldm_app/views/view_barang_gudang.dart';

import '../../../../components/theme.dart';
import 'edit_barang_gudang.dart';

class BarangPage extends StatefulWidget {
  @override
  State<BarangPage> createState() => _BarangPageState();
}

class _BarangPageState extends State<BarangPage> {
  var box = GetStorage();

  void SelectedItem(BuildContext context, item) {
    switch (item) {
      case 0:
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => ViewBarangPage()));
        break;
    }
  }

  void selectedGudang(BuildContext context, item) {
    switch (item) {
      case 0:
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) {
            return ViewBarangGudangPage();
          }),
        );
        break;
      case 1:
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) {
            return EditBarangGudangPage();
          }),
        );
        break;
      case 2:
        showDialog(
          context: context,
          builder: (ctx) => AlertDialog(
            contentPadding:
                EdgeInsets.only(left: 13, right: 13, bottom: 31, top: 7),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            backgroundColor: Color(0xff5D5FEF),
            title: Column(
              children: [
                Icon(
                  Icons.warning_amber,
                  color: Colors.orange,
                  size: 42,
                ),
                SizedBox(
                  height: 43,
                ),
                Text(
                  'Anda yakin akan \nmenghapus Ini?',
                  style: blackStyle.copyWith(
                    fontSize: 24,
                    color: Colors.white,
                  ),
                )
              ],
            ),
            content: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                  onPressed: () {
                    Navigator.of(ctx).pop();
                  },
                  child: Container(
                    color: Color(0xff24D748),
                    padding: const EdgeInsets.all(14),
                    child: const Text(
                      "Ya",
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.of(ctx).pop();
                  },
                  child: Container(
                    color: Color(0xffE41830),
                    padding: const EdgeInsets.all(14),
                    child: const Text(
                      "Tidak",
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
    }
  }

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Dashboard Barang',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 18),
            TextField(
              decoration: InputDecoration(
                contentPadding: EdgeInsets.all(10),
                fillColor: Colors.white,
                filled: true,
                hintText: 'Cari Barang',
                hintStyle: blackStyle.copyWith(
                  fontSize: 16,
                  color: Color(0xFFA9A9A9),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide.none,
                ),
                suffixIcon: Icon(Icons.search),
              ),
            ),
            SizedBox(height: 18),
            Divider(
              thickness: 1,
              color: Colors.black,
            ),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: Color(0xfff1F2F7),
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              height: 138,
              decoration: BoxDecoration(
                color: blueColor,
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 100),
              padding:
                  EdgeInsets.only(top: 12, left: 28, right: 28, bottom: 28),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.vertical(top: Radius.circular(25)),
                color: Color(0xfff1F2F7),
              ),
              child: Column(
                children: [
                  header(),
                  Expanded(
                    child: ListView.builder(
                      itemCount: 10,
                      itemBuilder: (context, index) {
                        return Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Container(
                            padding: const EdgeInsets.all(10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Image.asset(
                                      'assets/icons/barang.png',
                                      height: 20,
                                    ),
                                    SizedBox(width: 10),
                                    Text(
                                      'TP-LINK TL-WR940N',
                                      style: TextStyle(
                                        fontSize: 12,
                                      ),
                                    ),
                                    Expanded(child: SizedBox()),
                                    box.read('key')['role'] == 'gudang'
                                        ? PopupMenuButton<int>(
                                            icon: Icon(Icons.more_vert),
                                            iconSize: 30,
                                            // offset: Offset.zero,
                                            itemBuilder: (context) {
                                              return [
                                                PopupMenuItem(
                                                  value: 0,
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Text('View'),
                                                      Icon(Icons
                                                          .remove_red_eye_outlined),
                                                    ],
                                                  ),
                                                ),
                                                PopupMenuItem(
                                                  value: 1,
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Text('Edit'),
                                                      Icon(Icons.edit),
                                                    ],
                                                  ),
                                                ),
                                                PopupMenuItem(
                                                  value: 2,
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Text('Delete'),
                                                      Icon(Icons
                                                          .restore_from_trash_outlined),
                                                    ],
                                                  ),
                                                )
                                              ];
                                            },
                                            onSelected: (item) =>
                                                selectedGudang(context, item),
                                          )
                                        : PopupMenuButton<int>(
                                            icon: Icon(Icons.more_vert),
                                            iconSize: 20,
                                            // offset: Offset.zero,
                                            itemBuilder: (context) {
                                              return [
                                                PopupMenuItem(
                                                  value: 0,
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Text('View'),
                                                      Icon(Icons
                                                          .remove_red_eye_outlined),
                                                    ],
                                                  ),
                                                ),
                                              ];
                                            },
                                            onSelected: (item) =>
                                                SelectedItem(context, item),
                                          ),
                                  ],
                                ),
                                Divider(
                                  thickness: 2,
                                ),
                                Row(
                                  children: [
                                    Text(
                                      'Stock',
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Expanded(child: SizedBox()),
                                    Text(
                                      '10',
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    SizedBox(width: 10),
                                  ],
                                )
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
