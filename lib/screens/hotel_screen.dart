import 'package:booktickets/utils/app_layout.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../utils/app_style.dart';

class HotelScreen extends StatelessWidget{
  final Map<String,dynamic>hotel;
  const HotelScreen({Key? Key,required this.hotel}):super(key: Key);
  @override
  Widget build(BuildContext context) {
    print('Hotel price is ${hotel['price']}');
    final size=AppLayout.getSize(context);
    return Container(
      width: size.width*0.6,
      height: AppLayout.getHeight(350),
      padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 17),
      margin: const EdgeInsets.only(right: 17,top: 5),
      decoration: BoxDecoration(
        color: Styles.primaryColor,
        borderRadius: BorderRadius.circular(24),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.shade200,
              blurRadius: 20,
              spreadRadius: 5,
            )
          ]
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 180,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color:Styles.primaryColor,
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                  "assets/images/${hotel['image']}"
                )
              )
            ),
          ),
          const Gap(10),
          Text(
            hotel['place'],
             style:Styles.headLineStyle2.copyWith(color: Styles.kakiColor) ,
          ),
          const Gap(5),
          Text(
            hotel['destination'],
            style:Styles.headLineStyle3.copyWith(color:Colors.white) ,
          ),
          const Gap(8),
          Text(
           '\$${hotel['price']}/night',
            style:Styles.headLineStyle2.copyWith(color: Styles.kakiColor) ,
          )
        ],
      ),
    );
  }

}