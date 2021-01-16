import 'package:flutter/material.dart';

import 'category/page_four.dart';
import 'category/page_one.dart';
import 'category/page_three.dart';
import 'category/page_two.dart';

class CategoryPage extends StatefulWidget {
  const CategoryPage({Key key}) : super(key: key);

  @override
  _CategoryPageState createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  @override
  Widget build(BuildContext context) {
    // ignore: prefer_expression_function_bodies
    FlatButton _aFlatButton(
            Color color, IconData icon, String text, Widget pageName) =>
        FlatButton(
          // ignore: unnecessary_parenthesis
          shape: (const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(10)))),
          color: Colors.white,
          onPressed: () {
            Navigator.push<Object>(
                context,
                MaterialPageRoute(
                  builder: (context) => pageName,
                ));
          },
          child: Column(
            children: [
              Icon(icon, size: 50),
              Text(
                text,
                style: TextStyle(
                  color: color,
                ),
              )
            ],
          ),
        );

    final Widget _buttons = GridView.count(
      addRepaintBoundaries: false,
      padding: const EdgeInsets.all(10.0),
      crossAxisCount: 4,
      mainAxisSpacing: 10,
      crossAxisSpacing: 10,
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      children: [
        _aFlatButton(Colors.black, Icons.menu, "文本", const PageOne()),
        _aFlatButton(Colors.black, Icons.menu, "文本", const PageTwo()),
        _aFlatButton(Colors.black, Icons.menu, "文本", const PageThree()),
        _aFlatButton(Colors.black, Icons.menu, "文本", const PageFour())
      ],
    );

    return ListView(children: <Widget>[
      const Text(
        "文本",
        style: TextStyle(color: Colors.black),
      ),
      Container(
        child: _buttons,
      )
    ]);
  }
}
