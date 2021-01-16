import 'package:flutter/material.dart';

class PageThree extends StatelessWidget {
  const PageThree({Key key}) : super(key: key);
  static String routeName = "/page_three";

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: const Text("PageThree"),
        ),
        body: const Text("PageThree"),
      );
}
