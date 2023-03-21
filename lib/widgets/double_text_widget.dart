import 'package:flutter/material.dart';
import 'package:ticketbookingapp/utils/app_styles.dart';

class AppDoubleTextWidget extends StatelessWidget {
  final String bigtext;
  final String smalltext;
  const AppDoubleTextWidget({super.key,required this.bigtext,required this.smalltext});

  @override
  Widget build(BuildContext context) {
    return    Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(bigtext,style: Styles.headLineStyle2,),
                  InkWell(
                    onTap: () {
                      print("You are Clicked");
                    },
                    child: Text(smalltext,
                    style: Styles.textStyle.copyWith(color: Styles.primaryColor)))
                ],
              );
  }
}