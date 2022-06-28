import 'package:flutter/material.dart';

import 'package:ldm_app/components/theme.dart';
import 'package:ldm_app/views/dashboard/role/supervisor/view_barang.dart';

class CardBarang extends StatelessWidget {
  final String image;
  final String title;

  const CardBarang({
    Key? key,
    required this.image,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 17, left: 15, right: 26),
      height: 120,
      width: double.infinity,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.3),
            spreadRadius: 1,
            blurRadius: 4,
            offset: Offset(0, 6), // changes position of shadow
          ),
        ],
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 36,
                height: 36,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Image.asset(image),
              ),
              Text(
                title,
                style: blackStyle.copyWith(
                    fontSize: 16, fontWeight: FontWeight.w500),
              ),
              PopupMenuButton<int>(
                iconSize: 20,
                offset: Offset.zero,
                itemBuilder: (context) {
                  return [
                    PopupMenuItem(
                      value: 0,
                      onTap: () {},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('View'),
                          Icon(Icons.remove_red_eye_outlined),
                        ],
                      ),
                    ),
                  ];
                },
                onSelected: (item) => SelectedItem(context, item),
              ),
            ],
          ),
          Divider(
            thickness: 1,
          ),
          Container(
            padding: EdgeInsets.only(right: 20, bottom: 6),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Stock',
                  style: blackStyle.copyWith(
                      fontSize: 16, fontWeight: FontWeight.w500),
                ),
                Text(
                  '8',
                  style: blackStyle.copyWith(
                      fontSize: 16, fontWeight: FontWeight.w500),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  void SelectedItem(BuildContext context, item) {
    switch (item) {
      case 0:
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => ViewBarangPage()));
        break;
    }
  }
}
