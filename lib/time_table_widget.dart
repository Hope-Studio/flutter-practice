import 'package:flutter/material.dart';

Container _label(String text, Color color) => Container(
      width: 50,
      height: 70,
      decoration: BoxDecoration(
        color: color,
        border: Border.all(color: Colors.black54),
      ),
      child: Center(
        child: Text(
          text,
          textAlign: TextAlign.center,
          style: const TextStyle(fontSize: 12, fontStyle: FontStyle.italic),
        ),
      ),
    );

Widget aLabel = Row(
  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  children: <Widget>[
    Expanded(child: _label('节次', const Color(0xffe0e0e0))),
    Expanded(child: _label('课程', const Color(0xffe0e0e0))),
    Expanded(child: _label('教室', const Color(0xffe0e0e0))),
    Expanded(child: _label('教师', const Color(0xffe0e0e0))),
    Expanded(child: _label('学分', const Color(0xffe0e0e0)))
  ],
);

Widget aRow(String section, String course, String room, String teacher,
        String credits, Color color) =>
    Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Expanded(child: _label(section, color)),
        Expanded(child: _label(course, color)),
        Expanded(child: _label(room, color)),
        Expanded(child: _label(teacher, color)),
        Expanded(child: _label(credits, color))
      ],
    );

Widget monday = ListView(padding: const EdgeInsets.all(10.0), children: [
  aLabel,
  aRow("1，2", "网页设计与开发", "418机房", "姜华", "2", Colors.white),
  aRow("3，4", "离散数学", "信科320", "赵晓威\n周俊萍", "3", Color(0xff81c784)),
  aRow("5，6", "体育", "", "", "0.5", Colors.white),
  aRow("7，8", "", "", "", "", Colors.white),
  aRow("9，10", "", "", "", "", Colors.white),
]);

Widget tuesday = ListView(padding: const EdgeInsets.all(10.0), children: [
  aLabel,
  aRow("1，2", "英语", "", "", "4", Colors.white),
  aRow("3，4", "中文写作", "", "", "2", Colors.white),
  aRow("5，6", "数字电路与数字逻辑", "信科320", "杨贵福", "3", Color(0xff81c784)),
  aRow("7，8", "中国近代史", "", "", "3", Colors.white),
  aRow("9，10", "计算机新技术讲座", "信科329", "教师组", "2", Colors.white),
]);

Widget wedsday = ListView(padding: const EdgeInsets.all(10.0), children: [
  aLabel,
  aRow("1，2", "*面向对象程序设计", "信科320", "韩毅", "3", Color(0xff81c784)),
  aRow("3，4", "高等数学Ⅱ", "信科322", "付治国", "4", Colors.white),
  aRow("5，6", "", "", "", "", Colors.white),
  aRow("7，8", "", "", "", "", Colors.white),
  aRow("9，10", "", "", "", "", Colors.white),
]);

Widget thursday = ListView(padding: const EdgeInsets.all(10.0), children: [
  aLabel,
  aRow("1，2", "面向对象程序设计", "信科320", "韩毅", "3", Color(0xff81c784)),
  aRow("3，4", "算法与程序设计实践", "418机房", "罗娜", "2", Color(0xff81c784)),
  aRow("5，6", "高等数学Ⅱ", "信科322", "付治国", "4", Colors.white),
  aRow("7，8", "", "", "", "", Colors.white),
  aRow("9，10", "", "", "", "", Colors.white),
]);

Widget friday = ListView(padding: const EdgeInsets.all(10.0), children: [
  aLabel,
  aRow("1，2", "英语", "", "", "4", Colors.white),
  aRow("3，4", "*离散数学\n**数字电路与数字逻辑", "信科320", "赵晓威\n周俊萍\n杨贵福", "3",
      Color(0xff81c784)),
  aRow("5，6", "*算法与程序设计实践\n**中国近现代史", "418机房", "罗娜", "3", Color(0x81c784)),
  aRow("7，8", "", "", "", "", Colors.white),
  aRow("9，10", "", "", "", "", Colors.white),
]);

Widget satuday = ListView(
  padding: const EdgeInsets.all(10),
  children: [
    aLabel,
    aRow("1，2", "", "", "", "", Colors.white),
    aRow("3，4", "", "", "", "", Colors.white),
    aRow("5，6", "", "", "", "", Colors.white),
    aRow("7，8", "", "", "", "", Colors.white),
    aRow("9，10", "", "", "", "", Colors.white),
  ],
);

Widget sunday = ListView(
  padding: const EdgeInsets.all(10),
  children: [
    aLabel,
    aRow("1，2", "", "", "", "", Colors.white),
    aRow("3，4", "", "", "", "", Colors.white),
    aRow("5，6", "", "", "", "", Colors.white),
    aRow("7，8", "", "", "", "", Colors.white),
    aRow("9，10", "", "", "", "", Colors.white),
  ],
);
