import 'package:flutter/material.dart';
import 'splash/splash_screen.dart';
import 'theme.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) => MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: theme(),
      home: const SplashScreen());
}
