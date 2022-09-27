import 'package:bookticket/utils/app_layout.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TicketTab extends StatelessWidget {
  final String firstTab, secondTab;

  const TicketTab({Key? key, required this.firstTab, required this.secondTab}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = Applayout.getSize(context);
    return  FittedBox(
      child: Container(
        padding: const EdgeInsets.all(3.5),
        decoration: BoxDecoration(
          color: const Color(0xFFF4F6FD),
          borderRadius: BorderRadius.circular(Applayout.getHeight(50)),
        ),
        child: Row(
          children: [
            Container(
              padding:
              EdgeInsets.symmetric(vertical: Applayout.getHeight(7)),
              width: size.width * 0.44,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.horizontal(
                    left: Radius.circular(Applayout.getHeight(50))),
              ),
              child:  Center(child: Text(firstTab)),
            ),
            Container(
              padding:
              EdgeInsets.symmetric(vertical: Applayout.getHeight(7)),
              width: size.width * 0.44,
              decoration: BoxDecoration(
                color: Colors.transparent,
                borderRadius: BorderRadius.horizontal(
                    right: Radius.circular(Applayout.getHeight(50))),
              ),
              child: Center(child: Text(secondTab)),
            ),
          ],
        ),
      ),
    );
  }
}
