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
  @override
  Widget build(BuildContext context) => Form(
        child: Column(
          children: <Widget>[
            buidIDField(),
            const SizedBox(height: 20),
            buidPasswordField(),
            const SizedBox(height: 20),
          ],
        ),
      );
}

TextFormField buidIDField() => TextFormField(
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
