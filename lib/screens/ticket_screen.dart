import 'package:bookticket/screens/ticket_view.dart';
import 'package:bookticket/utils/app_info_list.dart';
import 'package:bookticket/utils/app_layout.dart';
import 'package:bookticket/utils/app_styles.dart';
import 'package:bookticket/widgets/Dotted_line_Layout_Builder.dart';
import 'package:bookticket/widgets/ticket_screen_column_layout.dart';
import 'package:bookticket/widgets/ticket_tab.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:barcode_widget/barcode_widget.dart';

class TicketScreen extends StatelessWidget {
  const TicketScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: Stack(
        children: [
          ListView(
            padding: EdgeInsets.symmetric(
                vertical: Applayout.getHeight(20),
                horizontal: Applayout.getWidth(40)),
            children: [
              Gap(Applayout.getHeight(40)),
              Text(
                'Tickets',
                style: Styles.headLineStyle1,
              ),
              Gap(Applayout.getHeight(20)),
              const TicketTab(firstTab: 'Upcoming', secondTab: 'Previous'),
              Gap(Applayout.getHeight(20)),
              Container(
                  //padding: EdgeInsets.only(left: Applayout.getHeight(15)),
                  child: TicketView(
                ticket: ticketList[0],
                isColor: true,
              )),
            const SizedBox(height: 1,),
              Container(
                color: Colors.white,
                padding:
                    EdgeInsets.symmetric(horizontal: Applayout.getWidth(15), vertical: Applayout.getWidth(20)),
                   //  margin: EdgeInsets.symmetric(horizontal: Applayout.getHeight(15)),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        TicketScreenColumnLayout(
                          textFirst: 'Flutter Db',
                          textSecond: 'Passenger',
                          alignment: CrossAxisAlignment.start,
                          isColor: false,
                        ),
                        Gap(20),
                        TicketScreenColumnLayout(
                          textFirst: '5221 45678',
                          textSecond: "Passport",
                          alignment: CrossAxisAlignment.end,
                          isColor: false,
                        ),
                      ],
                    ),
                    Gap(Applayout.getHeight(20)),
                    const DottedLineLayoutBuilder(sections: 15, isColor: false,width:5),
                    Gap(Applayout.getHeight(20)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        TicketScreenColumnLayout(
                          textFirst: '0055 4444 77147',
                          textSecond: 'Number of E-ticket',
                          alignment: CrossAxisAlignment.start,
                          isColor: false,
                        ),
                        Gap(20),
                        TicketScreenColumnLayout(
                          textFirst: 'B2SJ28',
                          textSecond: "Booking Code",
                          alignment: CrossAxisAlignment.end,
                          isColor: false,
                        ),
                      ],
                    ),
                    Gap(Applayout.getHeight(20)),
                    const DottedLineLayoutBuilder(sections: 15, isColor: false,width:5),
                    Gap(Applayout.getHeight(20)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Row(
                              children:  [
                               const Icon(Icons.transform,color: Colors.blue,),
                                Text('**** 2435',style: Styles.headLineStyle3,),
                              ],
                            ),
                            Gap(Applayout.getHeight(5)),
                            Text('Payment Method',style: Styles.headLineStyle4,),
                          ],
                        ),
                        const TicketScreenColumnLayout(
                          textFirst: '\$2449',
                          textSecond: "Price",
                          alignment: CrossAxisAlignment.end,
                          isColor: false,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              //Bar code part
              const SizedBox(height: 1,),
               Container(
                 decoration:  BoxDecoration(
                   color: Colors.white,
                   borderRadius: BorderRadius.only(
                     bottomRight: Radius.circular(Applayout.getHeight(21)),
                     bottomLeft: Radius.circular(Applayout.getHeight(21)),
                   ),
                 ),

                // margin: EdgeInsets.only(left: Applayout.getHeight(15),right: Applayout.getHeight(15)),
                 padding:  EdgeInsets.only(top: Applayout.getHeight(20), bottom: Applayout.getHeight(20)),
                 child: Container(
                   padding: EdgeInsets.symmetric(horizontal: Applayout.getHeight(15)),
                   child: ClipRRect(
                     borderRadius: BorderRadius.circular(Applayout.getHeight(15)),
                     child: BarcodeWidget(data: 'https://github.com/martinovovo',
                       barcode: Barcode.code128(),
                       color: Styles.textColor,
                       width: double.infinity,
                       height: Applayout.getHeight(70),
                     ),
                   ),
                 ),
               ),
              Gap(Applayout.getHeight(20)),
              Container(
                //padding: EdgeInsets.only(left: Applayout.getHeight(10)),
                  child: TicketView(
                    ticket: ticketList[0],

                  )),

            ],
          ),
          Positioned(
            left: Applayout.getHeight(28),
            top: Applayout.getHeight(295),
            child: Container(
              padding: EdgeInsets.all(3),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Styles.textColor, width: 2),

              ),
              child: CircleAvatar(
                maxRadius: 4,
                backgroundColor: Styles.textColor,
              ),
            ),
          ),
          Positioned(
            right: Applayout.getHeight(28),
            top: Applayout.getHeight(295),
            child: Container(
              padding: EdgeInsets.all(3),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Styles.textColor, width: 2),

              ),
              child: CircleAvatar(
                maxRadius: 4,
                backgroundColor: Styles.textColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
