import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticketbookingapp/utils/app_layout.dart';
import 'package:ticketbookingapp/utils/app_styles.dart';

class AppColumnLayout extends StatelessWidget {
  final CrossAxisAlignment alignment;
  final String firstText;
  final String secondText;
  final bool? isColor;
  const AppColumnLayout({super.key,
  required this.firstText,
  required this.secondText,
  required this.alignment,
  this.isColor
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: alignment,
     // style:isColor==null? Styles.headLineStyle3.copyWith(color: Colors.white):Styles.headLineStyle3)
      children: [
        Text(firstText, style:isColor==null? Styles.headLineStyle3.copyWith(color: Colors.white):Styles.headLineStyle3),
        Gap(AppLayout.getHeight(3)),
        Text(secondText, style: isColor==null?Styles.headLineStyle4.copyWith(color: Colors.white):Styles.headLineStyle4),
      ],
    );
  }
}
