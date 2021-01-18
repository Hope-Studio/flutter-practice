import 'package:atest/pages/tabs/settings/sign_in.dart';
import 'package:flutter/material.dart';
import 'settings/sign_in.dart';

class SettingPage extends StatefulWidget {
  const SettingPage({Key key}) : super(key: key);

  @override
  _SettingPageState createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  @override
  Widget build(BuildContext context) {
    FlatButton _aFlatButton<Object>(String text, Widget pageName) => FlatButton(
          // ignore: unnecessary_parenthesis
          shape: (const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(10)))),
          color: Colors.white,
          onPressed: () {
            Navigator.push<Object>(
                context,
                MaterialPageRoute(
                  builder: (context) => pageName,
                ));
          },
          child: const Text(
            "sign in",
            style: TextStyle(color: Colors.blue),
          ),
        );

    return ListView(
      children: [
        _aFlatButton<Object>("text", const SignInPage()),
        _aFlatButton<Object>("text", const SignInPage()),
        _aFlatButton<Object>("text", const SignInPage()),
      ],
    );
  }
}
