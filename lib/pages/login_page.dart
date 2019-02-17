import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  static String tag = 'login-page';

  LoginPage();

  factory LoginPage.forDesignTime() {
    // TODO: add arguments
    return new LoginPage();
  }
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    final logo = Hero(
        tag: 'hero',
        child: CircleAvatar(
            backgroundColor: Colors.transparent,
            radius: 48.0,
            child: Image.asset('assets/logo.png')));

    final email = TextFormField(
        keyboardType: TextInputType.emailAddress,
        autofocus: false,
        initialValue: 'test@user.com',
        decoration: InputDecoration(
          hintText: 'Email',
          contentPadding: EdgeInsets.fromLTRB(20, 10, 20, 10),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(32)),
        ));

    final password = TextFormField(
      autofocus: false,
      initialValue: '******',
      obscureText: true,
      decoration: InputDecoration(
          hintText: 'Password',
          contentPadding: EdgeInsets.fromLTRB(20, 10, 20, 10),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(32))),
    );

    final loginbutton = Padding(
        padding: EdgeInsets.symmetric(vertical: 16),
        child: Material(
            borderRadius: BorderRadius.circular(30),
            shadowColor: Colors.lightBlueAccent.shade100,
            elevation: 5,
            child: MaterialButton(
                minWidth: 200,
                height: 42,
                onPressed: () {},
                color: Colors.lightBlueAccent,
                child: Text(
                  'Log in',
                  style: TextStyle(color: Colors.white),
                ))));

    final forgotLabel = FlatButton(
      child: Text(
        'Forgot Password',
        style: TextStyle(color: Colors.black54),
      ),
      onPressed: () {},
    );

    final scaffold = Scaffold(
        backgroundColor: Colors.white,
        body: Center(
            child: ListView(
          shrinkWrap: true,
          padding: EdgeInsets.only(left: 24, right: 24),
          children: <Widget>[
            logo,
            SizedBox(height: 48.0),
            email,
            SizedBox(height: 8.0),
            password,
            SizedBox(height: 24.0),
            loginbutton,
            forgotLabel
          ],
        )));
    return scaffold;
  }
}
