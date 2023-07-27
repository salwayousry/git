import 'dart:async';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class NeedScreen extends StatefulWidget{
  static String roteName="NeedScreen";
  @override
  State<NeedScreen> createState() => _NeedScreenState();
}

class _NeedScreenState extends State<NeedScreen> {
  TextEditingController dateInput = TextEditingController();

  late String _timeString;


  @override
  void initState() {

    dateInput.text = "dd/mm/yyyy"; //set the initial value of text field
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

        appBar: AppBar(

          backgroundColor: Colors.transparent,
          elevation: 0,

          actions: [
            CircleAvatar(
              backgroundImage: NetworkImage("https://encrypted-tbn0.gstat"
                  "ic.com/images?q=tbn:ANd9GcQNXp5dWS7maPuGN6gnSR82tDmSTnl-qaE8kA&usqp=CAU",),

            ),
          ],
          title: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text("محمد على الشرفا", style: TextStyle(
                      fontSize: 22,
                      color: Colors.black,
                      fontWeight: FontWeight.w500
                  ),),
                ],
              ),

            ],
          ),
        ),
        body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text('شاشة الطلبات', style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.w700,
                          color: Colors.black
                      ),),
                      SizedBox(width: 10,),
                      Icon(Icons.save_as_outlined, color: Colors.black, size: 50,),


                    ],

                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        alignment: Alignment.centerRight,
                        child: Text("نوع الطلب", style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w200,
                            color: Colors.black
                        ),),
                      ),
                      SizedBox(height: 20,),
                      Container(
                        alignment: Alignment.centerRight,
                        height: 50,
                        child: TextField(
                          maxLines: 1,
                          textAlign: TextAlign.right,
                          decoration: InputDecoration(
                            filled: true,
                            prefixIcon:
                            Icon(Icons.arrow_drop_down_outlined, color: Theme
                                .of(context)
                                .iconTheme
                                .color),
                            border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                            ),
                            fillColor: Colors.white,
                            contentPadding: EdgeInsets.zero,

                            hintText: 'اذن خاص',
                          ),
                        ),
                      )


                    ],
                  ),

                  SizedBox(height: 20,),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        alignment: Alignment.centerRight,
                        child: Text("سبب المغادرة", style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w200,
                            color: Colors.black
                        ),),
                      ),
                      SizedBox(height: 20,),
                      Container(
                        height: 90,
                        child: TextField(

                          maxLines: 90,

                          textAlign: TextAlign.right,
                          decoration: InputDecoration(
                            filled: true,

                            border: OutlineInputBorder(

                              borderSide: BorderSide.none,
                            ),
                            fillColor: Colors.white,
                            contentPadding: EdgeInsets.zero,

                            hintText: 'اكتب نص الطلب',
                          ),
                        ),
                      )


                    ],
                  ),
                  SizedBox(height: 20,),
                  Container(
                    height: 50,
                    child: ElevatedButton(

                      onPressed: () {},
                      child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('حفظ الطلب',style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w500
                          ),), // <-- Text
                          SizedBox(
                            width: 5,
                          ),
                          Icon( // <-- Icon
                            Icons.save,
                            size: 24.0,
                          ),
                        ],
                      ),
                    ),

                  ),

                ])
        ));
  }


}