import 'package:flutter/material.dart';
import 'package:ldm_app/components/widgets/card_barang.dart';

import '../../components/theme.dart';

class BarangPage extends StatelessWidget {
  const BarangPage({Key? key}) : super(key: key);

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
            ),
            SizedBox(height: 18),
            Container(
              height: 44,
              width: double.infinity,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black, width: 1.5),
                borderRadius: BorderRadius.circular(16),
              ),
              child: Row(
                children: [
                  Expanded(
                      child: Padding(
                    padding: const EdgeInsets.only(top: 16, left: 10),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Cari Barang',
                        hintStyle: blackStyle.copyWith(
                          fontSize: 16,
                          color: Color(0xFFA9A9A9),
                        ),
                        border: OutlineInputBorder(borderSide: BorderSide.none),
                        suffixIcon: Icon(Icons.search),
                      ),
                    ),
                  )),
                ],
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
        child: Column(
          children: [
            Container(
              height: 138,
              decoration: BoxDecoration(
                color: blueColor,
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
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    header(),
                    SizedBox(height: 48),
                    CardBarang(
                      image: 'assets/images/route.png',
                      title: 'TP-LINK TL-WR940N',
                      icon: Icon(Icons.more_vert_rounded),
                    ),
                    SizedBox(height: 30),
                    CardBarang(
                      image: 'assets/images/route.png',
                      title: 'TP-LINK TL-WR940N',
                      icon: Icon(Icons.more_vert_rounded),
                    ),
                    SizedBox(height: 30),
                    CardBarang(
                      image: 'assets/images/route.png',
                      title: 'TP-LINK TL-WR940N',
                      icon: Icon(Icons.more_vert_rounded),
                    ),
                    SizedBox(height: 30),
                    CardBarang(
                      image: 'assets/images/route.png',
                      title: 'TP-LINK TL-WR940N',
                      icon: Icon(Icons.more_vert_rounded),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
