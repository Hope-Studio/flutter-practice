import 'package:flutter/material.dart';
import 'demo.dart';
import 'data.dart';

class Tabs extends StatefulWidget {
  const Tabs({Key key}) : super(key: key);

  @override
  _TabsState createState() => _TabsState();
}

class _TabsState extends State<Tabs> with SingleTickerProviderStateMixin {
  TabController _tabController;
  List<Map> list = [];
  @override
  //初始化
  void initState() {
    super.initState();
    //tabController
    _tabController = TabController(vsync: this, length: 5);
    _tabController.addListener(() {
      // ignore: avoid_print
      print(_tabController.index);
    });
    //
    for (int i = 0; i < timeTable.length; i++) {
      if (timeTable[i] != null) list.add(timeTable[i]);
    }
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  //动态列表
  Widget temp = ListView.builder(
      itemCount: timeTable.length,
      itemBuilder: (BuildContext context, int index) {
        return Row(
          children: [
            Expanded(child: label(timeTable[index]['节次'])),
            Expanded(child: label(timeTable[index]['课程'])),
            Expanded(child: label(timeTable[index]['教室'])),
            Expanded(child: label(timeTable[index]['教师'])),
            Expanded(child: label(timeTable[index]['教学方式'])),
          ],
        );
      });

  @override
  Widget build(BuildContext context) => Scaffold(
      appBar: AppBar(
        title: const Text("课程表"),
        bottom: TabBar(
          controller: _tabController,
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
        children: <Widget>[
          Padding(padding: EdgeInsets.all(10), child: temp),
          Padding(padding: EdgeInsets.all(10), child: temp),
          Padding(padding: EdgeInsets.all(10), child: temp),
          Padding(padding: EdgeInsets.all(10), child: temp),
          Padding(padding: EdgeInsets.all(10), child: temp),
        ],
      ));
}
