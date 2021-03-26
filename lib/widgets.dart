import 'package:flutter/material.dart';
import 'package:timetable_joan/constants.dart';
import 'package:timetable_joan/size_config.dart';

Container label(String text) => Container(
    decoration: BoxDecoration(
      border: Border.all(color: primaryColor),
    ),
    child: SizedBox(
      height: getProportionateScreenHight(93),
      child: Center(
        child: Text(text, textAlign: TextAlign.center),
      ),
    ));

Container option(String text) => Container(
    decoration: BoxDecoration(
      border: Border.all(color: primaryColor),
    ),
    child: SizedBox(
      height: getProportionateScreenHight(38),
      child: Center(
        child: Text(text, textAlign: TextAlign.center),
      ),
    ));

Container optionRow() => Container(
    decoration: BoxDecoration(
      border: Border.all(color: primaryColor),
    ),
    child: Row(children: [
      Expanded(child: option("节次")),
      Expanded(child: option("课程")),
      Expanded(child: option("教室")),
      Expanded(child: option("教师")),
      Expanded(child: option("授课方式")),
    ]));

// for (int i = 0;i < timeTable.lenth;i++){
//   if(timeTable[i] != ''){

//   }
// }
