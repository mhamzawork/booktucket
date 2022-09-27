import 'package:bookticket/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../utils/app_layout.dart';
class TicketScreenColumnLayout extends StatelessWidget {
  final bool? isColor;
  final String textFirst, textSecond;
  final CrossAxisAlignment alignment;
  const TicketScreenColumnLayout({Key? key, required this.textFirst, required this.textSecond, required this.alignment, this.isColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
        crossAxisAlignment: alignment,
        children: [
        Text(textFirst,style: isColor == null
            ? Styles.headLineStyle3
            .copyWith(color: Colors.white)
            : Styles.headLineStyle3,),
    Gap(Applayout.getHeight(5)),
    Text(textSecond,style: isColor == null
        ? Styles.headLineStyle4
        .copyWith(color: Colors.white)
        : Styles.headLineStyle4,),

    ]
    );
  }
}
