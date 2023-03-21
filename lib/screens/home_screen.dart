import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticketbookingapp/screens/hotels_screen.dart';
import 'package:ticketbookingapp/screens/ticket_view.dart';
import 'package:ticketbookingapp/utils/app_info_list.dart';
import 'package:ticketbookingapp/utils/app_layout.dart';
import 'package:ticketbookingapp/utils/app_styles.dart';
import 'package:ticketbookingapp/widgets/double_text_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        shrinkWrap: true,
        //  mainAxisSize:MainAxisSize.max,
        children: [
          Container(
            // height: 400,
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                const Gap(40),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                    children: [
                      Text("Good Morning",style: Styles.headLineStyle3,),
                      Gap(5),
                       Text("Book Tickets",style: Styles.headLineStyle),
                    ],
                  ),
                  Container(
                    width: AppLayout.getWidth(50),
                    height: AppLayout.getHeight(50),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(AppLayout.getHeight(10)),
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image:AssetImage("assets/images/img_1.png") )
                  ),
                  )

                ],
              ),
              const Gap(25),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 12,vertical: 12),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xFFF4F6FD)
                ),
                child: Row(
                  children: [
                    const Icon(FluentSystemIcons.ic_fluent_search_regular,color: Color(0xFFBFC205),),
                    Text("search",
                    style: Styles.headLineStyle4,)

                  ],
                ),
              ),
              const Gap(40),
           AppDoubleTextWidget(bigtext: "Upcoming Flights", smalltext: "View all"),
            ]),
          ),
          const Gap(15),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          padding: const EdgeInsets.only(left: 21),
          child: Row(
            children: ticketList.map((singleTicket) => TicketView(ticket: singleTicket)).toList()
          )),
       const Gap(15),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 20),
         child: AppDoubleTextWidget(bigtext: "Hotels",smalltext: "View all",)
                  ),
        const Gap(15),
        SingleChildScrollView(
           scrollDirection: Axis.horizontal,
          padding: const EdgeInsets.only(left: 21),
          child: Row(
            children:hotelList.map((singlehotel) => HotelScreen(hotel: singlehotel)).toList()
            ),)
        ],
      ),
    );
  }
}