import 'package:bookticket/utils/app_layout.dart';
import 'package:bookticket/utils/app_styles.dart';
import 'package:bookticket/widgets/Dotted_line_Layout_Builder.dart';
import 'package:bookticket/widgets/ticket_screen_column_layout.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        padding: EdgeInsets.symmetric(
            horizontal: Applayout.getHeight(20),
            vertical: Applayout.getHeight(20)),
        children: [
          Gap(Applayout.getHeight(40)),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                //image
                width: 80,
                height: 80,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                child: const Icon(
                  Icons.airplanemode_active,
                  size: 50,
                  color: Colors.blue,
                ),
              ),
              Gap(Applayout.getWidth(20)),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Book Tickets',
                    style: Styles.headLineStyle1,
                  ),
                  Gap(Applayout.getWidth(5)),
                  Text(
                    'New York',
                    style: Styles.headLineStyle4,
                  ),
                  Gap(Applayout.getWidth(5)),
                  Container(
                    padding: EdgeInsets.symmetric(
                        horizontal: Applayout.getHeight(3),
                        vertical: Applayout.getWidth(3)),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                    ),
                    child: Row(
                      children: [
                        Icon(
                          Icons.workspace_premium_rounded,
                          color: Styles.greyColor,
                          size: 15,
                        ),
                        Gap(Applayout.getWidth(2)),
                        Text(
                          'Premium Status',
                          style: TextStyle(
                              color: Styles.greyColor,
                              fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Spacer(),
              Text(
                'EDIT',
                style: Styles.textStyle.copyWith(color: Styles.primaryColor),
              ),
            ],
          ),
          Gap(Applayout.getHeight(8)),
          Divider(
            color: Colors.grey.shade500,
          ),
          Gap(Applayout.getHeight(8)),
          Stack(
            children: [
              Container(
                height: Applayout.getHeight(90),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      Applayout.getWidth(18),
                    ),
                    color: Styles.primaryColor),
              ),
              Positioned(
                right: -45,
                top: -40,
                child: Container(
                  padding: EdgeInsets.all(Applayout.getHeight(30)),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(width: 18, color: Color(0xFF264CD2)),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(
                    horizontal: Applayout.getHeight(10),
                    vertical: Applayout.getHeight(20)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      maxRadius: 25,
                      backgroundColor: Colors.white,
                      child: Icon(
                        FluentSystemIcons.ic_fluent_lightbulb_circle_filled,
                        color: Styles.primaryColor,
                      ),
                    ),
                    Gap(Applayout.getHeight(8)),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'You \'ve got the a new reward',
                          style: Styles.headLineStyle2.copyWith(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'You have 95 flights in a year',
                          style: Styles.headLineStyle2.copyWith(
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                              fontSize: 16),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          Gap(Applayout.getHeight(25)),
          Text(
            'Accumulated Miles',
            style: Styles.headLineStyle2,
          ),
          Container(
            child: Column(
              children: [
                Gap(Applayout.getHeight(15)),
                Text(
                  '192450',
                  style: TextStyle(
                      color: Styles.textColor,
                      fontSize: 45,
                      fontWeight: FontWeight.w600),
                ),
                Gap(Applayout.getHeight(15)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Miles accure',
                      style: Styles.headLineStyle4.copyWith(fontSize: 16),
                    ),
                    Text(
                      '23 June 2022',
                      style: Styles.headLineStyle4.copyWith(fontSize: 16),
                    ),
                  ],
                ),
                Divider(
                  color: Colors.grey.shade500,
                ),
                Gap(Applayout.getHeight(8)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    TicketScreenColumnLayout(
                      textFirst: "23 004",
                      textSecond: 'Miles',
                      alignment: CrossAxisAlignment.start,
                      isColor: false,
                    ),
                    TicketScreenColumnLayout(
                      textFirst: "Airline Co",
                      textSecond: 'Received From',
                      alignment: CrossAxisAlignment.start,
                      isColor: false,
                    )
                  ],
                ),
                Gap(Applayout.getHeight(20)),
                DottedLineLayoutBuilder(sections: 12, isColor: false),
                Gap(Applayout.getHeight(20)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    TicketScreenColumnLayout(
                      textFirst: "23 004",
                      textSecond: 'Miles',
                      alignment: CrossAxisAlignment.start,
                      isColor: false,
                    ),
                    TicketScreenColumnLayout(
                      textFirst: "Airline Co",
                      textSecond: 'Received From',
                      alignment: CrossAxisAlignment.start,
                      isColor: false,
                    )
                  ],
                ),
                DottedLineLayoutBuilder(sections: 12, isColor: false),
                Gap(Applayout.getHeight(20)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    TicketScreenColumnLayout(
                      textFirst: "23 004",
                      textSecond: 'Miles',
                      alignment: CrossAxisAlignment.start,
                      isColor: false,
                    ),
                    TicketScreenColumnLayout(
                      textFirst: "Airline Co",
                      textSecond: 'Received From',
                      alignment: CrossAxisAlignment.start,
                      isColor: false,
                    )
                  ],
                ),
                Center(
                  child: Text(
                    "How to get more mile",
                    style: Styles.textStyle.copyWith(
                        color: Styles.primaryColor, fontWeight: FontWeight.w500),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
