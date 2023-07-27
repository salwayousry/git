

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class MoveScreen extends StatefulWidget{
  static String roteName="MoveScreen ";
  @override
  State<MoveScreen> createState() => _MoveScreenState();
}

class _MoveScreenState extends State<MoveScreen> {
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
                      Text('اذونات المغادرة', style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.w700,
                          color: Colors.black
                      ),),
                      SizedBox(width: 10,),
                      Icon(Icons.feed_outlined, color: Colors.black, size: 50,),


                    ],

                  ),
                  SizedBox(
                    height: 10,
                  ),

                  Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        alignment: Alignment.centerRight,
                        child: Text("التاريخ", style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w200,
                            color: Colors.black
                        ),),
                      ),
                      SizedBox(height: 10,),
                      Container(
                        alignment: Alignment.centerRight,
                        height: 50,
                        child: Material(
                          shadowColor: Colors.grey,
                          child: TextField(
                            textAlign: TextAlign.right,
                            controller: dateInput,
                            //editing controller of this TextField
                            decoration: InputDecoration(
                              filled: true,
                              prefixIcon:
                              InkWell(
                                  onTap: () async {
                                    DateTime? pickedDate = await showDatePicker(
                                        context: context,
                                        initialDate: DateTime.now(),
                                        firstDate: DateTime(1950),
                                        //DateTime.now() - not to allow to choose before today.
                                        lastDate: DateTime(2100));

                                    if (pickedDate != null) {
                                      print(
                                          pickedDate); //pickedDate output format => 2021-03-10 00:00:00.000
                                      String formattedDate =
                                      DateFormat('yyyy-MM-dd').format(
                                          pickedDate);
                                      print(
                                          formattedDate); //formatted date output using intl package =>  2021-03-16
                                      setState(() {
                                        dateInput.text =
                                            formattedDate; //set output date to TextField value.
                                      });
                                    }
                                  },
                                  child: Icon(Icons.calendar_month,
                                      color: Colors.blue)),
                              border: OutlineInputBorder(
                                borderSide: BorderSide.none,

                              ),
                              fillColor: Colors.white,
                              contentPadding: EdgeInsets.zero,
                              hintText: '${dateInput.text}',

                            ),
                          ),
                        ),
                        // readOnly: true,
                        //set it true, so that user will not able to edit text
                      )


                    ],
                  ),
                  SizedBox(height: 10,),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        alignment: Alignment.centerRight,
                        child: Text("نوع اذن المغادرة", style: TextStyle(
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
                  SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text('من الساعة', style: TextStyle(
                          fontWeight: FontWeight.w200,
                          color: Colors.black,
                          fontSize: 22
                      ),),
                      Text('الي الساعة', style: TextStyle(
                          fontWeight: FontWeight.w200,
                          color: Colors.black,
                          fontSize: 22
                      ),),

                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        alignment: Alignment.centerRight,
                        width: 170,
                        height: 50,
                        child: TextField(
                          maxLines: 1,
                          textAlign: TextAlign.right,
                          decoration: InputDecoration(
                            filled: true,
                            prefixIcon:
                            Icon(
                                Icons.access_time_outlined, color: Colors.blue),
                            border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                            ),
                            fillColor: Colors.white,
                            contentPadding: EdgeInsets.zero,

                            hintText: '00/00',
                          ),
                        ),
                      ),
                      Container(
                        alignment: Alignment.centerRight,
                        width: 170,
                        height: 50,
                        child: TextField(
                          maxLines: 1,
                          textAlign: TextAlign.right,
                          decoration: InputDecoration(
                            filled: true,
                            prefixIcon:
                            Icon(
                                Icons.access_time_outlined, color: Colors.blue),
                            border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                            ),
                            fillColor: Colors.white,
                            contentPadding: EdgeInsets.zero,

                            hintText: '00/00',
                          ),
                        ),
                      )

                    ],
                  ),
                  SizedBox(height: 10,),
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

                            hintText: 'اكتب سبب المغادرة',
                          ),
                        ),
                      )


                    ],
                  ),
                  SizedBox(height: 10,),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        alignment: Alignment.centerRight,
                        child: Text("الجهة المكان", style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w200,
                            color: Colors.black
                        ),),
                      ),
                    ],
                  )

                ])
        ));
  }


}