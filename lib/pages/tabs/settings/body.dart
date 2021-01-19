import 'package:atest/components/form_error.dart';
import 'package:atest/constants.dart';
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
  final List<String> errors = [];
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
            FormError(errors: errors),
            const SizedBox(height: 20),
            flatButton()
          ],
        ),
      );

  TextFormField buidIDField() => TextFormField(
      onChanged: (value) {
        if (value.isNotEmpty && errors.contains(kStudentIDNullError)) {
          setState(() {
            errors.remove(kStudentIDNullError);
          });
        }
      },
      validator: (value) {
        //输入字符校验
        if (value.isEmpty && !errors.contains(kStudentIDNullError)) {
          setState(() {
            errors.add(kStudentIDNullError);
          });
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
        onChanged: (value) {
          if (value.isNotEmpty && errors.contains(kPassNullError)) {
            setState(() {
              errors.remove(kPassNullError);
            });
          } else if (value.length >= 8 && errors.contains(kShortPassError)) {
            setState(() {
              errors.remove(kShortPassError);
            });
          }
        },
        validator: (value) {
          //输入字符校验
          if (value.isEmpty && !errors.contains(kPassNullError)) {
            setState(() {
              errors.add(kPassNullError);
            });
          } else if (value.length < 8 && !errors.contains(kShortPassError)) {
            setState(() {
              errors.add(kShortPassError);
            });
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
        // onPressed: submitForm,
        onPressed: () {
          if (_formKey.currentState.validate()) {
            _formKey.currentState.save();
          }
        },

        child: const Text(
          "sign in",
          style: TextStyle(color: Colors.white),
        ),
      );
}
