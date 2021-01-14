import 'package:flutter/material.dart';
import 'pages/tabs.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) => const MaterialApp(home: Tabs());
}
