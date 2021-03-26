import 'package:flutter/material.dart';
import 'tabs_demo1.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) => const MaterialApp(
        home: Tabs(),
      );
}
