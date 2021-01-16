import 'package:flutter/material.dart';
import 'splash/splash_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) => const MaterialApp(
      debugShowCheckedModeBanner: false,
      // theme: ThemeData(
      //     scaffoldBackgroundColor: Colors.white,
      //     appBarTheme: const AppBarTheme(
      //         color: Colors.white,
      //         textTheme: TextTheme(
      //           bodyText1: TextStyle(color: Colors.black),
      //           bodyText2: TextStyle(color: Colors.black),
      //         ),
      //         iconTheme: IconThemeData(color: Colors.black))),
      home: SplashScreen());
}
