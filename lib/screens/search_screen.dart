import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticketbookingapp/utils/app_layout.dart';
import 'package:ticketbookingapp/utils/app_styles.dart';
import 'package:ticketbookingapp/widgets/double_text_widget.dart';
import 'package:ticketbookingapp/widgets/icon_text_widget.dart';
import 'package:ticketbookingapp/widgets/ticket_tabs.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size=AppLayout.getSize(context);
    return Scaffold(
     backgroundColor: Styles.bgColor,
     body: ListView(
      padding: EdgeInsets.symmetric(horizontal:AppLayout.getWidth(20) ,vertical: AppLayout.getHeight(20) ),
      children: [
         Gap(AppLayout.getHeight(40)),
         Text("What are \nyou looking for?",style: Styles.headLineStyle.copyWith(fontSize: AppLayout.getWidth(30))),
         Gap(AppLayout.getHeight(20)),
         AppTicketsTabs(firstTab: "Airline tickets", secondTab: "Hotels"),
       Gap(AppLayout.getHeight(25)),
       AppIconText(icon: Icons.flight_takeoff_rounded, text: "Departure"),
       Gap(AppLayout.getHeight(20)),
       AppIconText(icon: Icons.flight_land_rounded, text: "Arrival"),
       Gap(AppLayout.getHeight(25)),
        Container(
        padding: EdgeInsets.symmetric(vertical: AppLayout.getWidth(18),horizontal: AppLayout.getHeight(15)),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(AppLayout.getWidth(10)),
          color: Color(0xFFD91130CE),
        ),
        child: Center(
          child: Text("Find Tickets",
          style: Styles.textStyle.copyWith(color: Colors.white))),),
          Gap(AppLayout.getHeight(40)),
          AppDoubleTextWidget(bigtext: "Upcoming Flights", smalltext: "View all"),
          Gap(AppLayout.getHeight(20)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                   height: AppLayout.getHeight(450),
                   width: size.width*0.48,
                   padding: EdgeInsets.symmetric(horizontal: AppLayout.getHeight(15),vertical: AppLayout.getWidth(15)),
                   decoration: BoxDecoration(
                    boxShadow:[ 
                      BoxShadow(
                      color: Colors.grey.shade200,
                      blurRadius:1 ,
                      spreadRadius: 1,
                    ),],
                    color: Colors.white,
                     borderRadius: BorderRadius.circular(AppLayout.getHeight(20),
                    ),
                   ),
                child: Column(
                  children: [
                    Container(
                      height: AppLayout.getHeight(190),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(AppLayout.getHeight(12)),
                       image: DecorationImage(
                        fit: BoxFit.cover,
                        image:AssetImage('assets/images/sit.jpg') )
                      ),
                    ),
                    Text("20% discount on the early booking of this flight.Don't miss.",
                    style:Styles.headLineStyle2  ,)
                  ],
                ),
              ),
              Column(
                children: [
                  Stack(
                    children: [
                      Container(
                    width: size.width*0.38,
                    height: AppLayout.getHeight(205),
                    decoration: BoxDecoration(
                      color: Color(0xFF3AB8B8),
                      borderRadius: BorderRadius.circular(AppLayout.getHeight(18))
                    ),
                    padding: EdgeInsets.symmetric(vertical: AppLayout.getWidth(15),horizontal: AppLayout.getHeight(15)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Discount \nfor survey",style: Styles.headLineStyle2.copyWith(color: Colors.white,fontSize: 15),),
                        Gap(AppLayout.getHeight(10)),
                        Text("Take the survey about our services and get discount",style: Styles.headLineStyle2.copyWith(color: Colors.white,fontSize: 13,fontWeight: FontWeight.w500),),
                      ],
                    ),
                  ),
                  Positioned(
                    right: -54,
                    top: -40,
                    child: Container(
                      padding: EdgeInsets.all(AppLayout.getHeight(30)),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(width: 18,color: Color(0xFF189999)),
                        color: Colors.transparent
                      ),
                    ),
                  )
                    ],
                  ),
                   Gap(AppLayout.getHeight(15)),
                   Container(
                    width: size.width*0.38,
                    height: AppLayout.getHeight(231),
                     padding: EdgeInsets.symmetric(horizontal:AppLayout.getHeight(15) ,vertical: AppLayout.getWidth(15)),
                    decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular( AppLayout.getHeight(18)),
                     color: const Color(0xFFEC6545)
                    ),
                    child: Column(
                      children: [
                        Text("Take Love",style: Styles.headLineStyle2.copyWith(color: Colors.white,fontSize: 16),textAlign: TextAlign.center,),
                        Gap(AppLayout.getHeight(5)),
                        RichText(
                          text:const TextSpan(
                            children: [
                              TextSpan(
                                text: '😍',
                                style: TextStyle(fontSize: 23),
                              ),
                              TextSpan(
                                text: '🥰',
                                style: TextStyle(fontSize: 35),
                              ),
                              TextSpan(
                                text: '😘',
                                style: TextStyle(fontSize: 23),
                              ),
                            ]
                          ) )
                      ],
                    ),
                   )
                ],
              )
            ],
          )
      ],
     ),
    );
  }
}