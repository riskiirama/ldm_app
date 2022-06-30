import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:ldm_app/components/theme.dart';
import 'package:ldm_app/components/widgets/card_penugasan.dart';
import 'package:ldm_app/views/edit_anggota.dart';
import 'package:ldm_app/views/view_anggota.dart';
import 'package:ldm_app/views/view_tugas.dart';

import 'edit_tugas.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var box = GetStorage();

  void SelectedItem(BuildContext context, item) {
    switch (item) {
      case 0:
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) {
            return ViewAnggotaPage();
          }),
        );
        break;
      case 1:
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) {
            return EditAnggotaPage();
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

  void selectedPenugasan(BuildContext context, item) {
    switch (item) {
      case 0:
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) {
            return ViewTugasPage();
          }),
        );
        break;
      case 1:
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) {
            return EditTugasPage();
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
      return Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 56,
            height: 56,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Color(0xFF7879F1),
            ),
          ),
          SizedBox(width: 16),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Hi!, User\nSelamat Datang',
                style: blackStyle.copyWith(
                  fontSize: 21,
                  fontWeight: FontWeight.w700,
                ),
              ),
              Text('30 Januari 2022'),
            ],
          ),
        ],
      );
    }

    Widget search() {
      return TextField(
        decoration: InputDecoration(
          contentPadding: EdgeInsets.all(10),
          fillColor: Colors.white,
          filled: true,
          hintText: 'Temukan Tugas',
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
      );
    }

    Widget titleHome() {
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            box.read('key')['role'] == 'admin' ? 'Anggota A' : 'Tugas 5',
            style: blackStyle.copyWith(
              fontSize: 20,
              fontWeight: FontWeight.w700,
            ),
          ),
          Text(
            'Lihat Semua',
            style: blackStyle.copyWith(
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      );
    }

    return Scaffold(
      backgroundColor: Color(0xffF1F2F7),
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.only(top: 38, left: 28, right: 28),
          child: Column(
            children: [
              header(),
              SizedBox(height: 26),
              search(),
              SizedBox(height: 68),
              titleHome(),
              SizedBox(height: 26),
              box.read('key')['role'] == 'admin'
                  ? Expanded(
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
                                  Text(
                                    'Rich Brian',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(height: 10),
                                  Text(
                                    'Teknisi',
                                    style: TextStyle(
                                      fontSize: 12,
                                    ),
                                  ),
                                  Divider(
                                    thickness: 2,
                                  ),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.call,
                                        color: Color(0xFF7879F1),
                                        size: 20,
                                      ),
                                      SizedBox(width: 10),
                                      Text(
                                        '081212121212',
                                        style: TextStyle(
                                          fontSize: 12,
                                        ),
                                      ),
                                      Expanded(child: SizedBox()),
                                      PopupMenuButton<int>(
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
                                            SelectedItem(context, item),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                    )
                  : Expanded(
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
                                      PopupMenuButton<int>(
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
                                            selectedPenugasan(context, item),
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
      ),
    );
  }
}
