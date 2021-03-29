import 'package:flutter/material.dart';
import 'package:forecast_joan/body.dart';
import 'package:forecast_joan/size_config.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
        child: Scaffold(
            // backgroundColor: Colors.transparent,
            appBar: AppBar(
                // backgroundColor: Colors.transparent,
                title: const Text("学校天气")),
            body: Body()));
  }
}

Future<http.Response> fetchAlbum() {
  //101060102
  return http.get(Uri.https(
      'https://tianqiapi.com/api?version=v1&appid=32712864&appsecret=VM3zy2xt',
      'albums/1'));
}
