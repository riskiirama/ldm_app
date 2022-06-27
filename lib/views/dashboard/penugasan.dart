import 'package:flutter/material.dart';
import 'package:ldm_app/components/widgets/card_penugasan.dart';

import '../../components/theme.dart';

class PenugasanPage extends StatelessWidget {
  const PenugasanPage({Key? key}) : super(key: key);

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
                          hintText: 'Temukan Tugas',
                          hintStyle: blackStyle.copyWith(
                            fontSize: 16,
                            color: Color(0xFFA9A9A9),
                          ),
                          border:
                              OutlineInputBorder(borderSide: BorderSide.none),
                          suffixIcon: Icon(Icons.search),
                        ),
                      ),
                    ),
                  ),
                ],
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
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    header(),
                    SizedBox(height: 26),
                    CardPenugasan(
                      'Pemasangan Jaringan di Rumah',
                      'Kedaton, Jl ZA Pagar Alam',
                      '7 Februari 2022',
                      Color(
                        0xff5D5FEF,
                      ),
                      'On Progress',
                    ),
                    SizedBox(height: 21),
                    CardPenugasan(
                      'Pemasangan Jaringan di Rumah',
                      'Kedaton, Jl ZA Pagar Alam',
                      '7 Februari 2022',
                      Color(
                        0xff48AF91,
                      ),
                      'Selesai',
                    ),
                    SizedBox(height: 21),
                    CardPenugasan(
                      'Pemasangan Jaringan di Rumah',
                      'Kedaton, Jl ZA Pagar Alam',
                      '7 Februari 2022',
                      Color(
                        0xffC9C960,
                      ),
                      'Pending',
                    ),
                    SizedBox(height: 21),
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
