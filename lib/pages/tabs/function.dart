import 'package:flutter/material.dart';

class FunctionPage extends StatefulWidget {
  const FunctionPage({Key key}) : super(key: key);

  @override
  _FunctionPageState createState() => _FunctionPageState();
}

class _FunctionPageState extends State<FunctionPage> {
  @override
  Widget build(BuildContext context) => ListView(
        children: [
          _aCard("123"),
          _aCard("123"),
          _aCard("123"),
        ],
      );
}

Widget _aCard(String text) => Card(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      color: Colors.grey,
      margin: const EdgeInsets.all(10.0),
      // ignore: sized_box_for_whitespace
      child: Container(
        height: 250,
        child: Text(text),
      ),
    );
