import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../utils/app_style.dart';

class AppDoubleTextWidget extends StatelessWidget{
  final String bigText;
  final String smallText;
  const AppDoubleTextWidget({Key? Key,required this.bigText,required this.smallText}) :super(key: Key);
  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          bigText,style: Styles.headLineStyle2,
        ),
        InkWell(
          onTap: (){
            print("Your are Tapped");
          },
          child: Text(
            smallText,style: Styles.textStyle.copyWith(color: Styles.primaryColor),
          ),
        )
      ],
    );
  }

}