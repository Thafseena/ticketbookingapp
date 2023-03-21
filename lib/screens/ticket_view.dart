import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:ticketbookingapp/utils/app_layout.dart';
import 'package:ticketbookingapp/utils/app_styles.dart';
import 'package:ticketbookingapp/widgets/column_layout.dart';
import 'package:ticketbookingapp/widgets/layout_builder_widget.dart';
import 'package:ticketbookingapp/widgets/thick_container.dart';

class TicketView extends StatelessWidget {
  final Map<String,dynamic> ticket;
  final bool? isColor;
  const TicketView({super.key,required this.ticket,this.isColor});

  @override
  Widget build(BuildContext context) {
    final size=AppLayout.getSize(context);
    return SizedBox(
      width:size.width*0.85,
      height: AppLayout.getHeight(GetPlatform.isAndroid==true?173:169),
      child: Container(
        margin:  EdgeInsets.only(right: AppLayout.getHeight(16) ),
        child: Column(
          children: [
           // showing the blue part of the card
            Container(
              decoration: BoxDecoration(
                color: isColor==null? Color(0xFF526799):Colors.white,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(AppLayout.getHeight(21)),
                topRight:Radius.circular(AppLayout.getHeight(21))), 
              ),
              padding: EdgeInsets.all(AppLayout.getHeight(16)),
              child: Column(
                children: [
                      Row(
                        children: [
                          Text(ticket['from']['code'],
                          style:isColor==null? Styles.headLineStyle3.copyWith(color: Colors.white):Styles.headLineStyle3),
                          //The spacer and expanded will give same result in a parent widget.
                          //Expanded(child:Container())
                          //const Spacer(),
                          Expanded(child:Container()),
                          ThickContainer(isColor: true),
                          Expanded(child:Stack(
                            children: [
                              SizedBox(
                              height: AppLayout.getHeight(24),
                              child: AppLayoutBuilderWidget(sections: 6)
                            ),
                             Center(
                              child: Transform.rotate(
                                angle:1.5 ,
                                child: Icon(Icons.local_airport_rounded,
                                color:isColor==null? Colors.white:Color(0xFF8ACCF7) ,), )),
                        ])),
                         // Icon(Icons.local_airport_rounded,color: Colors.white ,), To rotate an icon
                        
                          ThickContainer(isColor: true),
                         Expanded(child:Container()),
                          Text(ticket['to']['code'],style:isColor==null? Styles.headLineStyle3.copyWith(color: Colors.white):Styles.headLineStyle3)
                        ],
                      ),
                      const Gap(3),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                           SizedBox(
                            width: AppLayout.getWidth(80),
                            child: Text(ticket['from']['name'],style:isColor==null? Styles.headLineStyle4.copyWith(color: Colors.white):Styles.headLineStyle4,),
                           ),
                           Text(ticket['flyingtime'],style:isColor==null? Styles.headLineStyle4 .copyWith(color: Colors.white ):Styles.headLineStyle4),
                           SizedBox(
                            width: AppLayout.getWidth(80),
                            child: Text(ticket['to']['name'],textAlign: TextAlign.end,style:isColor==null? Styles.headLineStyle4.copyWith(color: Colors.white):Styles.headLineStyle4,),
                           ),
                        ],
                      )              
                ],
              ),
            ),
          // showing the red part of the card
          Container(
            color:isColor==null?Styles.OrangeColor:Colors.white,// const Color(0xFFF37B67),
            child: Row(
              children: [
                SizedBox(
                  height: AppLayout.getHeight(20),
                  width: AppLayout.getWidth(10),
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      color:isColor==null?Colors.grey.shade200: Colors.white,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(AppLayout.getHeight(10)),
                        bottomRight: Radius.circular(AppLayout.getHeight(10))
                      )
                    )),
                  
                ),
                     Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: LayoutBuilder(builder: (BuildContext context, BoxConstraints constraints) { 
                        return  Flex(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          mainAxisSize: MainAxisSize.max,
                          direction: Axis.horizontal,
                          children: List.generate((constraints.constrainWidth()/15).floor(), (index) => SizedBox(
                            height: 1,
                            width: 5,
                            child: DecoratedBox(
                              decoration:BoxDecoration(
                              color:isColor==null?Colors.white :Colors.grey.shade300),)
                          ))
                         );
                        },
                        
                     ),
                      )),           
              SizedBox(
                  height: 20,
                  width: 10,
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        bottomLeft: Radius.circular(10)
                      )
                    )),
                  
                )
              ],
            ),),
         //showing bottom red part card
         Container(
           decoration: BoxDecoration(
                color: isColor==null?Styles.OrangeColor:Colors.white,
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(isColor==null? 21:0),
                bottomRight:Radius.circular(isColor==null? 21:0)), 
              ),
              padding: EdgeInsets.all(15),
              child: Column(
                
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AppColumnLayout(firstText:ticket['date'] , 
                      secondText:"Date" , 
                      alignment:CrossAxisAlignment.start ,
                      isColor: isColor),
                      AppColumnLayout(firstText:ticket['departure_time'] , 
                      secondText:"Departure time" , 
                      alignment:CrossAxisAlignment.center ,
                      isColor: isColor),
                      AppColumnLayout(firstText:ticket['number'].toString() , 
                      secondText:"Number" , 
                      alignment:CrossAxisAlignment.end ,
                      isColor: isColor),
                                          ],
                  )
                ],
              ),
         )
          ],
        ),
      ),
    );
  }
}