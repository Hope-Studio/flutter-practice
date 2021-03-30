import 'package:forecast_joan/constants.dart';
import 'package:forecast_joan/size_config.dart';
import 'package:flutter/material.dart';

class Body extends StatefulWidget {
  Body({Key key}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) => SafeArea(
          child: ListView(
        children: [
          today,
          SizedBox(height: getProportionateScreenHight(20)),
          simpleForecast,
          SizedBox(height: getProportionateScreenHight(20)),
          eachHour,
          SizedBox(height: getProportionateScreenHight(20)),
          Expanded(child: indexs),
        ],
      ));
}

Widget today = SizedBox(
  height: 200,
  child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
    Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [const Icon(Icons.location_on), const Text("长春市 南关区")]),
    Padding(
      padding: EdgeInsets.only(
          left: getProportionateScreenWidth(10),
          right: getProportionateScreenWidth(10)),
      child: Row(children: [
        Container(
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.all(
                  Radius.circular(getProportionateScreenWidth(10))),
            ),
            child: Padding(
                padding: EdgeInsets.all(getProportionateScreenWidth(5)),
                child: Column(children: [const Text("25"), const Text("优")]))),
        const Spacer(),
        TextButton(
          onPressed: null,
          child: Row(children: [
            const Icon(Icons.navigate_next_outlined),
            const Text("分享")
          ]),
        ),
      ]),
    ),
    const Center(child: Text("16℃")),
    const Center(child: Text("晴")),
    const Center(child: Text("湿度 40%")),
  ]),
);

Widget simpleForecast = Container(
  color: Colors.white,
  child: Row(children: [
    Expanded(
      child: Padding(
        padding: EdgeInsets.all(getProportionateScreenHight(10)),
        child: Column(children: [
          Row(
            children: [
              const Text("今天"),
              const Spacer(),
              const Text("10/1°"),
            ],
          ),
          SizedBox(height: getProportionateScreenHight(10)),
          Row(
            children: [
              const Text("多云"),
              const Spacer(),
              const Icon(Icons.ac_unit),
            ],
          ),
        ]),
      ),
    ),
    Expanded(
      child: Padding(
        padding: EdgeInsets.all(getProportionateScreenHight(10)),
        child: Column(
          children: [
            Row(
              children: [
                const Text("明天"),
                const Spacer(),
                const Text("10/1°"),
              ],
            ),
            SizedBox(height: getProportionateScreenHight(10)),
            Row(
              children: [
                const Text("多云"),
                const Spacer(),
                const Icon(Icons.ac_unit),
              ],
            ),
          ],
        ),
      ),
    ),
  ]),
);

Widget eachHour = SizedBox(
  height: getProportionateScreenHight(100),
  child: Container(
    color: Colors.white,
    child: ListView.builder(
      scrollDirection: Axis.horizontal, //水平滚动
      itemCount: 16,
      itemBuilder: (BuildContext context, int index) {
        return Padding(
          padding: EdgeInsets.all(getProportionateScreenHight(10)),
          child: Column(children: [
            Text("$index", style: TextStyle(color: subColor, fontSize: 12)),
            SizedBox(height: getProportionateScreenHight(10)),
            const Icon(Icons.ac_unit),
            SizedBox(height: getProportionateScreenHight(10)),
            Text("$index"),
          ]),
        );
      },
    ),
  ),
);

Widget indexs = Container(
  color: Colors.white,
  child: Expanded(
    child: GridView.builder(
      physics: new NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4,
          crossAxisSpacing: 0,
          mainAxisSpacing: 0,
          childAspectRatio: 1),
      itemCount: 16,
      itemBuilder: (BuildContext context, int index) {
        return Container(
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(
              color: subColor,
              width: getProportionateScreenWidth(0.5),
            ),
          ),
          child: Padding(
            padding: EdgeInsets.all(getProportionateScreenHight(21)),
            child: Column(children: [
              const Icon(Icons.ac_unit),
              SizedBox(height: getProportionateScreenHight(10)),
              Text("$index"),
              SizedBox(height: getProportionateScreenHight(5)),
              Text("$index", style: TextStyle(color: subColor, fontSize: 12)),
            ]),
          ),
        );
      },
    ),
  ),
);
