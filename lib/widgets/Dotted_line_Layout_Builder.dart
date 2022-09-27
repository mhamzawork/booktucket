import 'package:bookticket/utils/app_layout.dart';
import 'package:flutter/material.dart';

class DottedLineLayoutBuilder extends StatelessWidget {
  final bool? isColor;
  final int sections;
  final double width;
  const DottedLineLayoutBuilder({Key? key, this.isColor, required this.sections,  this.width= 3}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder:
        (BuildContext context,
        BoxConstraints constraints) {
      return Flex(
        direction: Axis.horizontal,
        mainAxisAlignment:
        MainAxisAlignment.spaceBetween,
        children: List.generate(
            (constraints.constrainWidth() / sections)
                .floor(),
                (index) => SizedBox(
              width: Applayout.getWidth(width),
              height: Applayout.getHeight(1),
              child: DecoratedBox(
                decoration: BoxDecoration(
                    color: isColor == null
                        ? Colors.white
                        : Colors.grey.shade300),
              ),
            )),
      );
    });
  }
}
