import 'package:flutter/material.dart';
import 'package:ldm_app/components/theme.dart';
import 'package:ldm_app/views/edit_tugas.dart';
import 'package:ldm_app/views/view_tugas.dart';

class CardPenugasan extends StatelessWidget {
  final String title;
  final String jln;
  final String date;
  final Color color;
  final String progress;
  CardPenugasan(this.title, this.jln, this.date, this.color, this.progress);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 17, left: 15, right: 4),
      height: 128,
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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: blackStyle.copyWith(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: Color(0xff363942)),
          ),
          Text(
            jln,
            style: blackStyle.copyWith(
                fontSize: 12,
                fontWeight: FontWeight.w400,
                color: Color(0xff363942)),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 24),
            child: Divider(
              thickness: 1,
              color: Color(0XFFBFBFBF),
            ),
          ),
          Container(
            //   padding: EdgeInsets.only(right: 20, bottom: 8),
            child: Row(
              children: [
                Icon(
                  Icons.date_range,
                  color: Color(0xff7879F1),
                ),
                SizedBox(width: 8),
                Expanded(
                  child: Text(
                    date,
                  ),
                ),
                Container(
                  height: 36,
                  width: 90,
                  child: TextButton(
                    style: TextButton.styleFrom(
                      primary: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      backgroundColor: color,
                    ),
                    onPressed: () {},
                    child: Center(
                      child: Text(
                        progress,
                        style: blackStyle.copyWith(
                          color: Colors.white,
                          fontSize: 10,
                        ),
                      ),
                    ),
                  ),
                ),
                PopupMenuButton<int>(
                  iconSize: 20,
                  // offset: Offset.zero,
                  itemBuilder: (context) {
                    return [
                      PopupMenuItem(
                        value: 0,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('View'),
                            Icon(Icons.remove_red_eye_outlined),
                          ],
                        ),
                      ),
                      PopupMenuItem(
                        value: 1,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Edit'),
                            Icon(Icons.edit),
                          ],
                        ),
                      ),
                      PopupMenuItem(
                        value: 2,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Delete'),
                            Icon(Icons.restore_from_trash_outlined),
                          ],
                        ),
                      )
                    ];
                  },
                  onSelected: (item) => SelectedItem(context, item),
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
}
