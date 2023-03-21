import 'package:flutter/material.dart';
import 'package:ticketbookingapp/utils/app_layout.dart';

class AppTicketsTabs extends StatelessWidget {
  final String firstTab;
  final String secondTab;
  const AppTicketsTabs({super.key,required this.firstTab,required this.secondTab});

  @override
  Widget build(BuildContext context) {
    final size=AppLayout.getSize(context);
    return FittedBox(
           child: Container(
            padding: EdgeInsets.all(3.5),
            child: Row(
              children: [
                //airline tickets
                Container(
                  width: size.width*0.44,
                  padding: EdgeInsets.symmetric(vertical:AppLayout.getHeight(7)),
              decoration: BoxDecoration(
              borderRadius: BorderRadius.horizontal(left: Radius.circular(AppLayout.getHeight(50))),
              color: Colors.white
            ),
            child: Center(
              child: Text(firstTab)),
              //Text("Airline tickets")),
                ),
               //Hotels
               Container(
                  width: size.width*0.44,
                  padding: EdgeInsets.symmetric(vertical:AppLayout.getHeight(7)),
              decoration: BoxDecoration(
              borderRadius: BorderRadius.horizontal(right: Radius.circular(AppLayout.getHeight(50))),
              color: Colors.transparent
            ),
            child: Center(
              child:Text(secondTab)),
              // Text("Hotels")),
                ), 
              ],
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(AppLayout.getHeight(50)),
              color: const Color(0xFFF4F6FD)
            ),
           ),
         );
  }
}