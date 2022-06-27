import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ldm_app/components/theme.dart';
import 'package:ldm_app/routes/route_app.dart';

import '../../views/dashboard/view_page.dart';

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
                PopupMenuButton(
                  iconSize: 20,
                  offset: Offset.zero,
                  itemBuilder: (context) {
                    return [
                      PopupMenuItem(
                        value: 'View',
                        onTap: () {
                          Get.toNamed(RouteHelper.login);
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('View'),
                            Icon(Icons.remove_red_eye_outlined),
                          ],
                        ),
                      ),
                      PopupMenuItem(
                        value: 'edit',
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Edit'),
                            Icon(Icons.edit),
                          ],
                        ),
                      ),
                      PopupMenuItem(
                        value: 'delete',
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
                  onSelected: (String value) {},
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
