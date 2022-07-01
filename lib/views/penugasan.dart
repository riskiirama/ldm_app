import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:ldm_app/views/edit_tugas.dart';
import 'package:ldm_app/views/view_tugas.dart';
import '../../../../components/theme.dart';

class PenugasanPage extends StatefulWidget {
  @override
  State<PenugasanPage> createState() => _PenugasanPageState();
}

class _PenugasanPageState extends State<PenugasanPage> {
  var box = GetStorage();

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
    Widget periodeDate() {
      return Container(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 6),
                  alignment: Alignment.center,
                  width: 90,
                  height: 16,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '20-Feb-2022',
                        style: blackStyle.copyWith(fontSize: 8),
                      ),
                      Icon(
                        Icons.date_range_outlined,
                        size: 10,
                      )
                    ],
                  ),
                ),
                SizedBox(width: 10),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 6),
                  alignment: Alignment.center,
                  width: 90,
                  height: 16,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '20-Feb-2022',
                        style: blackStyle.copyWith(fontSize: 8),
                      ),
                      Icon(
                        Icons.date_range_outlined,
                        size: 10,
                      )
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  width: 110,
                  height: 38,
                  child: TextButton(
                    style: TextButton.styleFrom(
                      primary: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      backgroundColor: Color(0xff7879F1),
                    ),
                    onPressed: () {},
                    child: Center(
                      child: Text(
                        'Terapkan',
                        style: blackStyle.copyWith(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 13),
                Container(
                  width: 110,
                  height: 38,
                  child: TextButton(
                    style: TextButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      backgroundColor: Colors.white,
                    ),
                    onPressed: () {},
                    child: Center(
                      child: Text(
                        'Reset',
                        style: blackStyle.copyWith(
                          color: Color(0xff7879F1),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      );
    }

    Widget header() {
      return Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Dashboard Penugasan',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                Row(
                  children: [
                    Text(
                      'Filter',
                    ),
                    SizedBox(width: 12),
                    Icon(Icons.sort),
                  ],
                )
              ],
            ),
            SizedBox(height: 18),
            TextField(
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
            ),
            SizedBox(height: 10),
            Text('Periode'),
            SizedBox(height: 8),
            Column(
              children: [
                periodeDate(),
              ],
            ),
            SizedBox(height: 8),
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
        child: Column(
          children: [
            Container(
              height: 138,
              decoration: BoxDecoration(
                color: blueColor,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 9, vertical: 6),
                    width: 62,
                    height: 62,
                    decoration: BoxDecoration(
                      color: Color(0xff30C9F9),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Column(
                      children: [
                        Text(
                          '14',
                          style: blackStyle.copyWith(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          'Total',
                          style: blackStyle.copyWith(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 20),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 9, vertical: 6),
                    width: 62,
                    height: 62,
                    decoration: BoxDecoration(
                      color: Color(0xff24D748),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Column(
                      children: [
                        Text(
                          '5',
                          style: blackStyle.copyWith(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(height: 4),
                        Text(
                          'Selesai',
                          style: blackStyle.copyWith(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 20),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 4, vertical: 6),
                    width: 62,
                    height: 62,
                    decoration: BoxDecoration(
                      color: Color(0xffE41830),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Column(
                      children: [
                        Text(
                          '5',
                          style: blackStyle.copyWith(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(height: 6),
                        Text(
                          'Dikerjakan',
                          style: blackStyle.copyWith(
                            fontSize: 10,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 20),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 4, vertical: 6),
                    width: 62,
                    height: 62,
                    decoration: BoxDecoration(
                      color: Color(0xffF2F218),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Column(
                      children: [
                        Text(
                          '4',
                          style: blackStyle.copyWith(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(height: 6),
                        Text(
                          'Verifying',
                          style: blackStyle.copyWith(
                            fontSize: 10,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 550,
              padding:
                  EdgeInsets.only(top: 12, left: 28, right: 28, bottom: 28),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.vertical(top: Radius.circular(25)),
                color: Color(0xfff1F2F7),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  header(),
                  SizedBox(height: 26),
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
                                Text(
                                  'Pemasangan Jaringan di Rumah',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(height: 10),
                                Text(
                                  'Kedaton, Jl ZA Pagar Alam',
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
                                      Icons.date_range,
                                      color: Color(0xFF7879F1),
                                      size: 20,
                                    ),
                                    SizedBox(width: 10),
                                    Text(
                                      '7 Februari 2022',
                                      style: TextStyle(
                                        fontSize: 12,
                                      ),
                                    ),
                                    Expanded(child: SizedBox()),
                                    ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                          primary: blueColor,
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                          )),
                                      onPressed: () {},
                                      child: Text(
                                        'On Progress',
                                        style: TextStyle(
                                          fontSize: 12,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                    box.read('key')['role'] == 'boss' ||
                                            box.read('key')['role'] == 'teknisi'
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
                                                      Text('Isi'),
                                                      Icon(Icons.edit),
                                                    ],
                                                  ),
                                                ),
                                              ];
                                            },
                                            onSelected: (item) =>
                                                selectedPenugasan(
                                                    context, item),
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
                                                selectedPenugasan(
                                                    context, item),
                                          )
                                  ],
                                ),
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
