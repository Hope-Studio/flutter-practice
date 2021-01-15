import 'package:flutter/material.dart';
import 'time_table_widget.dart';

class Tabs extends StatefulWidget {
  const Tabs({Key key}) : super(key: key);

  @override
  _TabsState createState() => _TabsState();
}

class _TabsState extends State<Tabs> with SingleTickerProviderStateMixin {
  TabController _tabController;
  @override
  //初始化
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: 5);
    _tabController.addListener(() {
      // ignore: avoid_print
      print(_tabController.index);
    });
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: const Text("TimeTable"),
          bottom: TabBar(
            controller: _tabController,
            // ignore: prefer_const_literals_to_create_immutables
            tabs: [
              const Tab(text: 'Mon.'),
              const Tab(text: 'Tue.'),
              const Tab(text: 'Weds.'),
              const Tab(text: 'Thur.'),
              const Tab(text: 'Fri.'),
            ],
          ),
        ),
        body: TabBarView(
          controller: _tabController,
          children: <Widget>[monday, tuesday, wedsday, thursday, friday],
        ),
      );
}
