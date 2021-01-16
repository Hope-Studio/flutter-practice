import 'package:flutter/material.dart';
import 'pages/tabs.dart';
import 'pages/tabs/category/page_four.dart';
import 'pages/tabs/category/page_one.dart';
import 'pages/tabs/category/page_three.dart';
import 'pages/tabs/category/page_two.dart';

final Map<String, WidgetBuilder> routes = {
  //categroy
  PageOne.routeName: (context) => const PageOne(),
  PageTwo.routeName: (context) => const PageTwo(),
  PageThree.routeName: (context) => const PageThree(),
  PageFour.routeName: (context) => const PageFour(),
  Tabs.routeName: (context) => const Tabs(),
};
