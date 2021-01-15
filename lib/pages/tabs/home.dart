import 'package:flutter/material.dart';
import 'package:atest/Pages/search.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          RaisedButton(
            onPressed: () {
              Navigator.push<Object>(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) => const SearchPage()));
            },
            child: const Text("跳转到搜索界面"),
          )
        ],
      );
}
