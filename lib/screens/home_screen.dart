import 'package:bookticket/screens/hotel_screen.dart';
import 'package:bookticket/screens/ticket_view.dart';
import 'package:bookticket/utils/app_info_list.dart';
import 'package:bookticket/utils/app_styles.dart';
import 'package:bookticket/widgets/upcoming_flighs_view.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        children: [

          // main container
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            //Main column
            child: Column(
              children: [
                const Gap(40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Good Morning',
                          style: Styles.headLineStyle3,
                        ),
                        const Gap(5),
                        Text(
                          "Book Ticket",
                          style: Styles.headLineStyle1,
                        ),
                      ],
                    ),
                    Container(
                      //image
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                      ),
                      child: const Icon(
                        Icons.airplanemode_active,
                        size: 30,
                        color: Colors.blue,
                      ),
                    ),
                  ],
                ),
                const Gap(25),
                Container(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 12.0, vertical: 12.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color(0xFFF4F6FD),
                  ),
                  child: Row(
                    children: [
                      const Icon(
                        FluentSystemIcons.ic_fluent_search_regular,
                      ),
                      Text(
                        "Search",
                        style: Styles.headLineStyle4,
                      ),
                    ],
                  ),
                ),
                const Gap(40),
                const UpcomingFlightsView(textHeading: 'Upcoming Flights', textButton: 'View all'),
              ],
            ),
          ),
          const Gap(15),
       SingleChildScrollView(
         padding: const EdgeInsets.only(right: 20),
         scrollDirection: Axis.horizontal,
         child: Row(
           children: ticketList.map((singleTicket) => TicketView(ticket: singleTicket)).toList(),

         ),

       ),
          const Gap(15),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
            child: const UpcomingFlightsView(textHeading: 'Hotel',textButton: 'View all',),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.only(left: 20),
            child: Row(
              children: hotelList.map((hotel) => HotelScreen(hotel: hotel)).toList(),
            ),
          ),

        ],
      ),
    );
  }
}
