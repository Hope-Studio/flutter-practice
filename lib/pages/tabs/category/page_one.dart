import 'package:flutter/material.dart';

class PageOne extends StatelessWidget {
  const PageOne({Key key}) : super(key: key);
  static String routeName = "/page_one";

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: const Text("PageOne"),
        ),
        body: const Text("PageOne"),
      );
}
