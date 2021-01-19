import 'package:flutter/material.dart';
// import 'package:atest/Pages/search.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // final _key = GlobalKey();
  // String content;

  // void submit() {
  //   _key.currentState.save();
  //   debugPrint('content:$content');
  // }

  @override
  Widget build(BuildContext context) => SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: <Widget>[
            TextFormField(
              decoration: const InputDecoration(
                icon: Icon(
                  Icons.search,
                  color: Colors.grey,
                ),
                hintText: "Search",
                floatingLabelBehavior: FloatingLabelBehavior.always,
              ),
            ),
          ],
        ),
      ));
}

// RaisedButton(
//             onPressed: () {
//               Navigator.push<Object>(
//                   context,
//                   MaterialPageRoute(
//                       builder: (
// BuildContext context) => const SearchPage()));
//             },
//             child: const Text("跳转到搜索界面"),
//           )
