import 'package:flutter/material.dart';

class Body extends StatefulWidget {
  const Body({Key key}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) => SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                const Text(
                  "Welcome Back",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 28,
                      fontWeight: FontWeight.bold),
                ),
                const Text(
                  "Sign in with your Student ID and password",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
                const SignForm(),
              ],
            ),
          ),
        ),
      );
}

class SignForm extends StatefulWidget {
  const SignForm({Key key}) : super(key: key);

  @override
  _SignFormState createState() => _SignFormState();
}

class _SignFormState extends State<SignForm> {
  final _formKey = GlobalKey<FormState>();
  // final List<String> errors = [];
  String studentid, password;

  void submitForm() {
    _formKey.currentState.save();
    debugPrint('username:$studentid');
    debugPrint('password:$password');
  }

  @override
  Widget build(BuildContext context) => Form(
        key: _formKey,
        child: Column(
          children: <Widget>[
            buidIDField(),
            const SizedBox(height: 20),
            buidPasswordField(),
            const SizedBox(height: 20),
            flatButton()
          ],
        ),
      );

  TextFormField buidIDField() => TextFormField(
      validator: (value) {
        //输入字符校验
        if (value.isEmpty) {
          return "请输入文字";
        }
        return null;
      },
      onSaved: (value) {
        studentid = value;
      },
      decoration: const InputDecoration(
        //   icon: Icon(
        //     Icons.person,
        //     color: Colors.grey,
        //   ),
        labelText: "Student ID",
        hintText: "Enter your Student ID",

        floatingLabelBehavior: FloatingLabelBehavior.always,
      ));

  TextFormField buidPasswordField() => TextFormField(
        obscureText: true,
        validator: (value) {
          //输入字符校验
          if (value.isEmpty) {
            return "请输入文字";
          }
          return null;
        },
        onSaved: (value) {
          password = value;
        },
        decoration: const InputDecoration(
          // icon: Icon(
          //   Icons.person,
          //   color: Colors.grey,
          // ),
          labelText: "Password",
          hintText: "Enter your password",
          floatingLabelBehavior: FloatingLabelBehavior.always,
        ),
      );

  FlatButton flatButton() => FlatButton(
        color: Colors.blue,
        // ignore: unnecessary_parenthesis
        shape: (const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)))),
        onPressed: submitForm,
        child: const Text(
          "sign in",
          style: TextStyle(color: Colors.white),
        ),
      );
}
