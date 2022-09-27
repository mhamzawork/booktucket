import 'package:bookticket/utils/app_layout.dart';
import 'package:bookticket/utils/app_styles.dart';
import 'package:bookticket/widgets/ticket_tab.dart';
import 'package:bookticket/widgets/upcoming_flighs_view.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';


import '../widgets/Search_screen_search_item.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = Applayout.getSize(context);
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        padding: EdgeInsets.symmetric(
            vertical: Applayout.getHeight(20),
            horizontal: Applayout.getWidth(20)),
        children: [
          Gap(Applayout.getHeight(40)),
          Text(
            'What are \n you looking for?',
            style: Styles.headLineStyle1
                .copyWith(fontSize: Applayout.getHeight(35)),
          ),
          Gap(Applayout.getHeight(20)),
         const TicketTab(firstTab: 'Airline Tickets', secondTab: 'Hotels'),
          Gap(Applayout.getHeight(25)),
          const SearchScreenSearchItem(
            icon: Icons.flight_takeoff_rounded,
            text: 'Departure',
          ),
          Gap(Applayout.getHeight(15)),
          const SearchScreenSearchItem(
            icon: Icons.flight_land_rounded,
            text: 'Arrival',
          ),
          Gap(Applayout.getHeight(25)),
          Container(
            padding: EdgeInsets.symmetric(
                vertical: Applayout.getHeight(15),
                horizontal: Applayout.getWidth(15)),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(Applayout.getHeight(10)),
              color: const Color(0xD91130CE),
            ),
            child: Center(
              child: Text(
                'Find Tickets',
                style: Styles.textStyle.copyWith(color: Colors.white),
              ),
            ),
          ),
          Gap(Applayout.getHeight(40)),
          const UpcomingFlightsView(
              textHeading: 'Upcoming flights', textButton: 'View all'),
          Gap(Applayout.getHeight(15)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: EdgeInsets.symmetric(
                    horizontal: Applayout.getWidth(15),
                    vertical: Applayout.getHeight(15)),
                height: Applayout.getWidth(425),
                width: size.width * 0.42,
                decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.circular(Applayout.getHeight(20)),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.shade200,
                        blurRadius: 1,
                        spreadRadius: 1,
                      )
                    ]),
                child: Column(
                  children: [
                    Container(
                      height: Applayout.getHeight(190),
                      decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.circular(Applayout.getHeight(12)),
                        image: const DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage('assets/images/air.jpg'),
                        ),
                      ),
                    ),
                    Gap(Applayout.getHeight(12)),
                    Text(
                      "20% discount on first booking. do'nt miss this chance...",
                      style: Styles.headLineStyle2,
                    ),
                  ],
                ),
              ),
              Column(
                children: [
                  Stack(
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: Applayout.getWidth(15),
                            vertical: Applayout.getHeight(15)),
                        height: Applayout.getHeight(200),
                        width: size.width * 0.44,
                        decoration: BoxDecoration(
                            color: const Color(0xFF3AB8B8),
                            borderRadius:
                                BorderRadius.circular(Applayout.getHeight(18))),
                        child: Column(
                          children: [
                            Text(
                              'Discount\nfor survey',
                              style: Styles.headLineStyle2.copyWith(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            Gap(Applayout.getHeight(15)),
                            Text(
                                'Take the survey about our services and get discount',
                                style: Styles.headLineStyle2.copyWith(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 18)),
                          ],
                        ),
                      ),
                      Positioned(
                        right: -45,
                        top: -40,
                        child: Container(
                          padding: EdgeInsets.all(Applayout.getHeight(30)),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                                color: const Color(0xFF189999), width: 18),
                            color: Colors.transparent,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Gap(Applayout.getHeight(15)),
                  Container(
                    width: size.width * 0.44,
                    height: Applayout.getHeight(210),
                    padding: EdgeInsets.symmetric(
                        vertical: Applayout.getHeight(15),
                        horizontal: Applayout.getWidth(15)),
                    decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.circular(Applayout.getHeight(18)),
                      color: const Color(0xFFEC6545),
                    ),
                    child: Column(
                      children: [
                        Text(
                          'Take love',
                          style: Styles.headLineStyle2.copyWith(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        Gap(Applayout.getHeight(15)),
                        RichText(text: const TextSpan(
                          children: [
                            TextSpan(
                              text: '😅',
                              style: TextStyle(fontSize:38 ),
                            ),
                            TextSpan(
                              text: '🥰',
                              style: TextStyle(fontSize:50 ),
                            ),
                            TextSpan(
                              text: '😘',
                              style: TextStyle(fontSize:38 ),
                            ),
                          ],
                        ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
