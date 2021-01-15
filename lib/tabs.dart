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
    _tabController = TabController(vsync: this, length: 7);
    _tabController.addListener(() {});
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: const Center(
              child: Text(
            'TimeTable',
            style: TextStyle(fontSize: 20),
          )),
          bottom: TabBar(
            isScrollable: true,
            controller: _tabController,
            // ignore: prefer_const_literals_to_create_immutables
            tabs: [
              const Tab(text: 'Mon.'),
              const Tab(text: 'Tue.'),
              const Tab(text: 'Wed.'),
              const Tab(text: 'Thur.'),
              const Tab(text: 'Fri.'),
              const Tab(text: 'Sat.'),
              const Tab(text: 'Sun.'),
            ],
          ),
        ),
        body: TabBarView(
          controller: _tabController,
          children: <Widget>[
            monday,
            tuesday,
            wedsday,
            thursday,
            friday,
            satuday,
            sunday
          ],
        ),
        bottomSheet: const Text(
          '备注：*为单周上课符号，**为双周上课符号，绿色为专业必修课程',
          style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
        ),
      );
}
