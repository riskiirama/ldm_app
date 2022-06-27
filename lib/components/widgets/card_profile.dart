import 'package:flutter/material.dart';

class CardProfile extends StatelessWidget {
  final Icon icon;
  final String title;
  final String desc;
  const CardProfile(
      {Key? key, required this.icon, required this.title, required this.desc})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 17, left: 20),
      height: 74,
      width: 304,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 36,
            height: 36,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
            ),
            child: icon,
          ),
          SizedBox(width: 23),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title),
              SizedBox(height: 9),
              Text(desc),
            ],
          ),
        ],
      ),
    );
  }
}
