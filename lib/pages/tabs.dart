import 'package:flutter/material.dart';

import 'tabs/category.dart';
import 'tabs/function.dart';
import 'tabs/home.dart';
import 'tabs/setting.dart';

class Tabs extends StatefulWidget {
  const Tabs({Key key}) : super(key: key);

  @override
  _TabsState createState() => _TabsState();
}

class _TabsState extends State<Tabs> {
  int _currentIndex = 0;

  final List<Widget> _pageList = <Widget>[
    const HomePage(),
    const CategoryPage(),
    const FunctionPage(),
    const SettingPage(),
  ];

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: const Text("title"),
        ),
        body: _pageList[_currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: (int index) {
            setState(() {
              _currentIndex = index;
            });
          },
          unselectedItemColor: Colors.blue,
          fixedColor: Colors.blue,
          // ignore: prefer_const_literals_to_create_immutables
          items: [
            const BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
              ),
              label: "首页",
            ),
            const BottomNavigationBarItem(
              icon: Icon(
                Icons.category,
              ),
              label: "分类",
            ),
            const BottomNavigationBarItem(
              icon: Icon(
                Icons.functions,
              ),
              label: "功能",
            ),
            const BottomNavigationBarItem(
              icon: Icon(
                Icons.settings,
              ),
              label: "设置",
            ),
          ],
        ),
      );
}
