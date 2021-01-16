import 'package:flutter/material.dart';

class PageTwo extends StatelessWidget {
  const PageTwo({Key key}) : super(key: key);
  static String routeName = "/page_two";

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: const Text("PageTwo"),
        ),
        body: const Text("PageTwo"),
      );
}
