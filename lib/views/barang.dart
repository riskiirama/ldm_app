import 'package:flutter/material.dart';
import 'package:ldm_app/views/view_barang.dart';

import '../../../../components/theme.dart';

class BarangPage extends StatelessWidget {
  const BarangPage({Key? key}) : super(key: key);
  void SelectedItem(BuildContext context, item) {
    switch (item) {
      case 0:
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => ViewBarangPage()));
        break;
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
