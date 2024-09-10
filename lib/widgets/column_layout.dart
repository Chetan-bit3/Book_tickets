import 'package:flutter/cupertino.dart';
import 'package:gap/gap.dart';

import '../utils/app_layout.dart';
import '../utils/app_style.dart';

class AppColumnLayout extends StatelessWidget{
  final CrossAxisAlignment alignment;
  final String firstText;
  final String secondText;
  final bool? isColor;
  const AppColumnLayout({Key? Key,
    required this.firstText,
    required this.secondText,
    required this.alignment,this.isColor,
  }): super(key: Key);
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: alignment,
      children: [
        Text(firstText,style: Styles.headLineStyle3,),
        Gap(AppLayout.getHeight(10)),
        Text(secondText,style: Styles.headLineStyle4,),
      ],
    );
  }

}