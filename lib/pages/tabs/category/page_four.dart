import 'package:flutter/material.dart';

class PageFour extends StatelessWidget {
  const PageFour({Key key}) : super(key: key);
  static String routeName = "/page_four";

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: const Text("PageFour"),
        ),
        body: const Text("PageFour"),
      );
}
