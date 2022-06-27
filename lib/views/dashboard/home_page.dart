import 'package:flutter/material.dart';
import 'package:ldm_app/components/theme.dart';
import 'package:ldm_app/components/widgets/card_penugasan.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

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
              color: Colors.amber,
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
      return Container(
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
                    border: OutlineInputBorder(borderSide: BorderSide.none),
                    suffixIcon: Icon(Icons.search),
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    }

    Widget titleHome() {
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Tugas 5',
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
        child: ListView(
          padding: EdgeInsets.only(top: 38, left: 28, right: 28),
          children: [
            header(),
            SizedBox(height: 26),
            search(),
            SizedBox(height: 68),
            titleHome(),
            SizedBox(height: 26),
            CardPenugasan(
              'Pemasangan Jaringan di Rumah',
              'Kedaton, Jl ZA Pagar Alam',
              '7 Februari 2022',
              Color(0xff7879F1),
              'On Progress',
            ),
            SizedBox(
              height: 21,
            ),
            CardPenugasan(
              'Pemasangan Jaringan di Rumah',
              'Kedaton, Jl ZA Pagar Alam',
              '7 Februari 2022',
              Color(0xff7879F1),
              'On Progress',
            ),
            SizedBox(
              height: 21,
            ),
            CardPenugasan(
              'Pemasangan Jaringan di Rumah',
              'Kedaton, Jl ZA Pagar Alam',
              '7 Februari 2022',
              Color(0xff7879F1),
              'On Progress',
            ),
            SizedBox(height: 40),
          ],
        ),
      ),
    );
  }
}
