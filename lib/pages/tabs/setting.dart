import 'package:flutter/material.dart';

class SettingPage extends StatefulWidget {
  const SettingPage({Key key}) : super(key: key);

  @override
  _SettingPageState createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  @override
  Widget build(BuildContext context) {
    // ignore: prefer_expression_function_bodies
    RaisedButton _aRaisedButton(Color color, IconData icon, String text) {
      return RaisedButton(
        shape: (RoundedRectangleBorder(
            side: BorderSide.none,
            borderRadius: BorderRadius.all(Radius.circular(50)))),
        color: Colors.white,
        onPressed: null,
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
    }

    final Widget _buttons = GridView.count(
      addRepaintBoundaries: false,
      padding: const EdgeInsets.all(10.0),
      crossAxisCount: 4,
      mainAxisSpacing: 10,
      crossAxisSpacing: 10,
      children: [
        _aRaisedButton(Colors.black, Icons.menu, "文本"),
        _aRaisedButton(Colors.black, Icons.menu, "文本"),
        _aRaisedButton(Colors.black, Icons.menu, "文本"),
        _aRaisedButton(Colors.black, Icons.menu, "文本")
      ],
    );

    return ListView(children: <Widget>[
      const Text(
        "text",
        style: TextStyle(color: Colors.black),
      ),
      Container(
        color: Colors.white,
        child: _buttons,
      )
    ]);
  }
}
