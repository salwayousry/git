import 'package:flutter/material.dart';
import 'package:untitled24/screens/holidayscreen.dart';
import 'package:untitled24/screens/moveScreen.dart';
import 'package:untitled24/screens/needsscreen.dart';
import 'package:untitled24/screens/searchscreen.dart';

class HomeScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     body: Column(
       children: [
         InkWell(
           onTap: (){
            Navigator.pushNamed(context, HolidayScreen.roteName);
           },
             child:
         Text('الاجازات')),
         InkWell(
           onTap: (){
             Navigator.pushNamed(context, MoveScreen.roteName);
           },
             child: Text('المغادره')),
         InkWell(
           onTap: (){
               Navigator.pushNamed(context, NeedScreen.roteName);
           },
             child: Text('المطلبات')),
         InkWell(
           onTap: (){
             Navigator.pushNamed(context, SearchScreen.roteName);
           },
             child: Text("البحث"))
       ],
     ),
   );
  }

}