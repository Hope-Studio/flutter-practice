import 'package:flutter/material.dart';
import 'package:timetable_joan/components.dart';

Container label(String text) => Container(
    decoration: BoxDecoration(
      border: Border.all(color: primaryColor),
    ),
    child: SizedBox(
      height: 100,
      child: Center(
        child: Text(text, textAlign: TextAlign.center),
      ),
    ));

Container option(String text) => Container(
    decoration: BoxDecoration(
      border: Border.all(color: primaryColor),
    ),
    child: SizedBox(
      height: 30,
      child: Center(
        child: Text(text, textAlign: TextAlign.center),
      ),
    ));

Container optionRow() => Container(
    decoration: BoxDecoration(
      border: Border.all(color: primaryColor),
    ),
    child: Row(children: [
      option("节次"),
      option("课程"),
      option("教室"),
      option("教师"),
      option("授课方式"),
    ]));

// for (int i = 0;i < timeTable.lenth;i++){
//   if(timeTable[i] != ''){

//   }
// }
