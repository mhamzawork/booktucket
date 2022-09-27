import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../utils/app_layout.dart';
import '../utils/app_styles.dart';

class SearchScreenSearchItem extends StatelessWidget {
  final IconData icon;
  final String text;
  const SearchScreenSearchItem(
      {Key? key, required this.icon, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
          vertical: Applayout.getHeight(12),
          horizontal: Applayout.getHeight(12)),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(Applayout.getHeight(10)),
        color: Colors.white,
      ),
      child: Row(
        children: [
           Icon(
            icon,
            color: Color(0xFFBFC2DF),
          ),
          Gap(Applayout.getWidth(10)),
          Text(
            text,

            style: Styles.textStyle,
          ),
        ],
      ),
    );
  }
}
