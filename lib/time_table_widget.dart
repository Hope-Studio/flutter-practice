import 'package:flutter/material.dart';

Container _label(String text, Color color) => Container(
      decoration: BoxDecoration(
        color: color,
        border: Border.all(color: Color(0xffcbcbcb)),
      ),
      child: Text(text, textAlign: TextAlign.center),
    );

Widget aLabel = Row(
  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  children: <Widget>[
    Expanded(child: _label("节次", Color(0xffe0e0e0))),
    Expanded(child: _label("课程", Color(0xffe0e0e0))),
    Expanded(child: _label("教室", Color(0xffe0e0e0))),
    Expanded(child: _label("教师", Color(0xffe0e0e0))),
    Expanded(child: _label("教学方式", Color(0xffe0e0e0))),
  ],
);

Widget aRow(String section, String course, String room, String teacher,
        String method, Color color) =>
    Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Expanded(child: _label(section, color)),
        Expanded(child: _label(course, color)),
        Expanded(child: _label(room, color)),
        Expanded(child: _label(teacher, color)),
        Expanded(child: _label(method, color)),
      ],
    );

Widget monday = ListView(padding: const EdgeInsets.all(10.0), children: [
  aLabel,
  aRow("null", "null", "null", "null", "null", Colors.white),
  aRow("null", "null", "null", "null", "null", Color(0xffe0e0e0))
]);

Widget tuesday = ListView(padding: const EdgeInsets.all(10.0), children: [
  aLabel,
  aRow("null", "null", "null", "null", "null", Colors.white),
  aRow("null", "null", "null", "null", "null", Color(0xffe0e0e0))
]);

Widget wedsday = ListView(padding: const EdgeInsets.all(10.0), children: [
  aLabel,
  aRow("null", "null", "null", "null", "null", Colors.white),
  aRow("null", "null", "null", "null", "null", Color(0xffe0e0e0))
]);

Widget thursday = ListView(padding: const EdgeInsets.all(10.0), children: [
  aLabel,
  aRow("null", "null", "null", "null", "null", Colors.white),
  aRow("null", "null", "null", "null", "null", Color(0xffe0e0e0))
]);

Widget friday = ListView(padding: const EdgeInsets.all(10.0), children: [
  aLabel,
  aRow("null", "null", "null", "null", "null", Colors.white),
  aRow("null", "null", "null", "null", "null", Color(0xffe0e0e0))
]);

// GridView.count(
//     childAspectRatio: 2 / 1,
//     crossAxisCount: 5,
//     mainAxisSpacing: 10,
//     crossAxisSpacing: 10,
//     padding: const EdgeInsets.all(10.0),
//     children: [
//       _label("null"),
//       _label("null"),
//       _label("null"),
//       _label("null"),
//       _label("null"),
//     ]);

// Widget aLabel = Row(
//   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//   children: <Widget>[
//     _label("节次", Colors.grey),
//     _label("课程", Colors.grey),
//     _label("教室", Colors.grey),
//     _label("教师", Colors.grey),
//     _label("教学方式", Colors.grey),
//   ],
// );

// Widget aRow(String section, String course, String room, String teacher,
//         String method, Color color) =>
//     Row(
//       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//       children: <Widget>[
//         _label(section, color),
//         _label(course, color),
//         _label(room, color),
//         _label(teacher, color),
//         _label(method, color),
//       ],
//     );

// Widget monday = ListView(padding: const EdgeInsets.all(10.0), children: [
//   aLabel,
//   aRow("null", "null", "null", "null", "null", Colors.white),
//   aRow("null", "null", "null", "null", "null", Colors.grey)
// ]);
