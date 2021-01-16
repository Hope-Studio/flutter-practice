import 'package:flutter/material.dart';
import 'package:atest/pages/tabs.dart';

class Body extends StatefulWidget {
  const Body({Key key}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  // ignore: avoid_unnecessary_containers
  Widget build(BuildContext context) => SafeArea(
          child: SizedBox(
              child: Center(
                  child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          const Text("welcome"),
          FlatButton(
            color: Colors.blue,
            // ignore: unnecessary_parenthesis
            shape: (const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(10)))),
            onPressed: () {
              Navigator.push<Object>(context,
                  MaterialPageRoute(builder: (context) => const Tabs()));
            },
            child: const Text(
              "continue",
              style: TextStyle(color: Colors.white),
            ),
          )
        ],
      ))));
}
