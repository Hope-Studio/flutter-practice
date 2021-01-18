import 'package:flutter/material.dart';

ThemeData theme() => ThemeData(
      // scaffoldBackgroundColor: Colors.white,
      appBarTheme: appBarTheme(),
      textTheme: textTheme(),
      inputDecorationTheme: inputDecorationTheme(),
      visualDensity: VisualDensity.adaptivePlatformDensity,
    );

TextTheme textTheme() => const TextTheme(
      headline6: TextStyle(
        color: Color(0xff888888),
        fontSize: 18,
      ),
      bodyText1: TextStyle(color: Colors.black),
      bodyText2: TextStyle(color: Colors.black),
    );

AppBarTheme appBarTheme() => AppBarTheme(
    color: Colors.white,
    elevation: 0,
    brightness: Brightness.light,
    textTheme: textTheme(),
    iconTheme: const IconThemeData(color: Colors.black));

InputDecorationTheme inputDecorationTheme() => const InputDecorationTheme(
      floatingLabelBehavior: FloatingLabelBehavior.always,
      contentPadding: EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 10,
      ),
      enabledBorder: OutlineInputBorder(
        // borderRadius: BorderRadius.circular(28),
        borderSide: BorderSide(color: Colors.grey),
        gapPadding: 10,
      ),
      focusedBorder: OutlineInputBorder(
        // borderRadius: BorderRadius.circular(28),
        borderSide: BorderSide(color: Colors.grey),
        gapPadding: 10,
      ),
    );
