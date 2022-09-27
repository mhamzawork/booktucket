import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../utils/app_styles.dart';

class UpcomingFlightsView extends StatelessWidget {
  final String textHeading;
  final String textButton;
  const UpcomingFlightsView({Key? key, required this.textHeading, required this.textButton}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          textHeading,
          style: Styles.headLineStyle2,
        ),
        InkWell(
            onTap: (){
              print('You are tapped');
            },
            child: Text(
             textButton,
              style:
              Styles.textStyle.copyWith(color: Styles.primaryColor),
            )),
      ],
    );
  }
}
