import 'package:flutter/material.dart';
import 'package:timetable_joan/size_config.dart';
import 'widgets.dart';
import 'data.dart';

class Tabs extends StatefulWidget {
  const Tabs({Key key}) : super(key: key);

  @override
  _TabsState createState() => _TabsState();
}

class _TabsState extends State<Tabs> with SingleTickerProviderStateMixin {
  TabController _tabController;
  var today = DateTime.now();

  List<Map> list = [];

  @override
  //初始化
  void initState() {
    super.initState();
    //tabController
    _tabController = TabController(vsync: this, length: 7);
    _tabController.index = today.weekday - 1;
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
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
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
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
        appBar: AppBar(
          title: const Text("课程表"),
          bottom: TabBar(
            isScrollable: true,
            controller: _tabController,
            tabs: [
              const Tab(text: '周一'),
              const Tab(text: '周二'),
              const Tab(text: '周三'),
              const Tab(text: '周四'),
              const Tab(text: '周五'),
              const Tab(text: '周六'),
              const Tab(text: '周日'),
            ],
          ),
        ),
        body: TabBarView(
          controller: _tabController,
          children: <Widget>[
            Padding(
                padding: EdgeInsets.all(10),
                child: Column(children: [optionRow(), temp])),
            Padding(
                padding: EdgeInsets.all(10),
                child: Column(children: [optionRow(), temp])),
            Padding(
                padding: EdgeInsets.all(10),
                child: Column(children: [optionRow(), temp])),
            Padding(
                padding: EdgeInsets.all(10),
                child: Column(children: [optionRow(), temp])),
            Padding(
                padding: EdgeInsets.all(10),
                child: Column(children: [optionRow(), temp])),
            Padding(
                padding: EdgeInsets.all(10),
                child: Column(children: [optionRow(), temp])),
            Padding(
                padding: EdgeInsets.all(10),
                child: Column(children: [optionRow(), temp])),
          ],
        ));
  }
}
