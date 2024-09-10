import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../utils/app_layout.dart';

class AppTicketTabs extends StatelessWidget{
  final String firstTab;
  final String secondTab;

  const AppTicketTabs({Key? Key,required this.firstTab,required this.secondTab}) :super(key: Key);
  @override
  Widget build(BuildContext context) {
   final size=AppLayout.getSize(context);
    return Container(
      padding:const EdgeInsets.all(3.5),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(AppLayout.getHeight(50),),
          color: const Color(0xFFF4F6FD)
      ),
      child: Row(
        children: [
          //tickets
          Flexible(
            child: Container(
              width: size.width*44,
              padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(7)),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.horizontal(left:Radius.circular(AppLayout.getHeight(50)),),
                color: Colors.white,
              ),
              child:Center(child: Text(firstTab)) ,
            ),
          ),
          //hotels
          Flexible(
            child: Container(
              width: size.width*44,
              padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(7)),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.horizontal(right:Radius.circular(AppLayout.getHeight(50)),),
                color: Colors.transparent,
              ),
              child:Center(child: Text(secondTab)) ,
            ),
          ),
        ],
      ),
    );
  }
}