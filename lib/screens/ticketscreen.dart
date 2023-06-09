import 'package:barcode_widget/barcode_widget.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticketbookingapp/screens/ticket_view.dart';
import 'package:ticketbookingapp/utils/app_info_list.dart';
import 'package:ticketbookingapp/utils/app_layout.dart';
import 'package:ticketbookingapp/utils/app_styles.dart';
import 'package:ticketbookingapp/widgets/column_layout.dart';
import 'package:ticketbookingapp/widgets/layout_builder_widget.dart';
import 'package:ticketbookingapp/widgets/ticket_tabs.dart';

class TicketScreen extends StatelessWidget {
  const TicketScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size=AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: Stack(
        children: 
          [
            ListView(
              padding:  EdgeInsets.symmetric(horizontal: AppLayout.getHeight(20),vertical:AppLayout.getWidth(20) ),
            children: [
              Gap(AppLayout.getHeight(40)),
              Text("Tickets",style: Styles.headLineStyle,),
              Gap(AppLayout.getHeight(20)),
              AppTicketsTabs(firstTab: "Upcoming", secondTab: "Previous"),
              Gap(AppLayout.getHeight(20)),
              Container(
                padding: EdgeInsets.only(left:AppLayout.getHeight(15)),
                child: TicketView(ticket: ticketList[0],isColor: true,),

              ),
              SizedBox(height: 1),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 15,vertical: 20),
                margin: EdgeInsets.symmetric(horizontal: 15),
                decoration: BoxDecoration(
                  color: Colors.white,
                  
                  // borderRadius: BorderRadius.circular(20),
       // border: Border.all(width: 2.5,),
                ),

                child: Column(
                 crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Row(
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                       AppColumnLayout(
                        firstText: "Flutter DB",
                       secondText: "Passangers",
                       alignment:CrossAxisAlignment.start ,
                       isColor: true,
                       ),
                        AppColumnLayout(
                          firstText: "5221 478566",
                          secondText: "Passport",
                          alignment:CrossAxisAlignment.end,
                          isColor: true,
                          ),

                      ],
                    ),
                Gap(AppLayout.getHeight(20)),
                 AppLayoutBuilderWidget(sections: 15,isColor: false,width: 5),
               Gap(AppLayout.getHeight(20)),
               Row(
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                       AppColumnLayout(
                        firstText: "0055 444 77147",
                       secondText: "Number of E-ticket",
                       alignment:CrossAxisAlignment.start ,
                       isColor: true,
                       ),
                        AppColumnLayout(
                          firstText: "B2SG28",
                          secondText: "Booking Code",
                          alignment:CrossAxisAlignment.end,
                          isColor: true,
                          ),

                      ],
                    ),
                     Gap(AppLayout.getHeight(20)),
                 AppLayoutBuilderWidget(sections: 15,isColor: false,width: 5),
                 Gap(AppLayout.getHeight(20)),
                 Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(

                      children: [
                     Row(
                      // mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Image.asset("assets/images/visa.png",scale: 11),
                        Text(" *** 2462",style: Styles.headLineStyle3,)

                      ],
                     ),
                Gap(5),
                 Text("Payment method",style: Styles.headLineStyle4,),
                      ],
                    ),
                  AppColumnLayout(
                        firstText: "\$249.99",
                       secondText: "Price ",
                       alignment:CrossAxisAlignment.end  ,
                       isColor: true,
                       ),
                  ],
                 ),
                  ],
                ),
              ),
              //Barcode Widget
              SizedBox(height: 1),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    bottomLeft:Radius.circular(AppLayout.getHeight(21)),
                    bottomRight: Radius.circular(AppLayout.getHeight(21))
                  )
                ),
                
                margin: EdgeInsets.only(left: AppLayout.getHeight(15),right: AppLayout.getHeight(15)),
                padding: EdgeInsets.only(top: AppLayout.getHeight(20),bottom: AppLayout.getHeight(20)),
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: AppLayout.getHeight(15)),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(AppLayout.getHeight(15)),
                    child: BarcodeWidget(
                      data:'https://github.com/Thafseena', 
                      drawText: false,
                      barcode:Barcode.code128(),
                      color: Styles.textColor,
                      width: double.infinity,
                      height: 70,
                       ),
                  ),
                ),
              ),
           Gap(AppLayout.getHeight(20)),
              Container(
                padding: EdgeInsets.only(left:AppLayout.getHeight(15)),
                child: TicketView(ticket: ticketList[0]),

              ),
            ],
          ),
        Positioned(
          left: AppLayout.getHeight(22),
          top: AppLayout.getHeight(295),
          child: Container(
            padding: EdgeInsets.all(3),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: Styles.textColor,width: 2),
            ),
            child: CircleAvatar(
              maxRadius: 4,
              backgroundColor: Styles.textColor,
            ),
          ),
        ),
        Positioned(
          right: AppLayout.getHeight(22),
          top: AppLayout.getHeight(295),
          child: Container(
            padding: EdgeInsets.all(3),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: Styles.textColor,width: 2),
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