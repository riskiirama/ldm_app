import 'package:flutter/material.dart';
import 'package:ldm_app/components/theme.dart';

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
      padding: EdgeInsets.only(top: 17, left: 15, right: 26),
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
          Divider(
            thickness: 1,
            color: Color(0XFFBFBFBF),
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
                SizedBox(
                  width: 15,
                ),
                Icon(
                  Icons.more_vert_outlined,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
