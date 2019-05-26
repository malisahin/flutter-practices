import 'package:combine_mobile/pages/stacked_icons.dart';
import 'package:flutter/material.dart';

class LoginPageApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        iconTheme: IconThemeData(color: Color(0xFF18d191)),
      ),
      body: Container(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            StackedIcons(),
            _getHeader(),
            _getEmailTextWidget(),
            SizedBox(height: 10.0),
            _getPasswordTextWidget(),
            Row(
              children: <Widget>[
                _getLoginButtonWidget(),
                _getForgotPasswordButtonWidget()
              ],
            ),
            _getCreateNewAccountButtonWidget()
          ],
        ),
      ),
    );
  }

  Widget _getHeader() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(top: 8.0, bottom: 80.0),
          child: Text(
            "Combine",
            style: TextStyle(fontSize: 30),
          ),
        )
      ],
    );
  }

  Widget _getEmailTextWidget() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 0.0),
      child: TextField(decoration: InputDecoration(labelText: 'Email')),
    );
  }

  Widget _getPasswordTextWidget() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: TextField(
        obscureText: true,
        decoration: InputDecoration(labelText: 'Password'),
      ),
    );
  }

  Widget _getLoginButtonWidget() {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(left: 10, right: 20, top: 10),
        child: Container(
          alignment: Alignment.center,
          height: 50.0,
          decoration: BoxDecoration(
            color: Color(0xFF18D191),
            borderRadius: BorderRadius.circular(9.0),
          ),
          child: Text("Login",
              style: TextStyle(fontSize: 20, color: Colors.white)),
        ),
      ),
    );
  }

  Widget _getForgotPasswordButtonWidget() {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(left: 10, right: 20, top: 10),
        child: Container(
          alignment: Alignment.center,
          height: 60.0,
          child: Text("Forgot Password?",
              style: TextStyle(fontSize: 16, color: Color(0xFF18D191))),
        ),
      ),
    );
  }

  Widget _getCreateNewAccountButtonWidget() {
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: Text(
              "Create A New Account ",
              style: TextStyle(
                  fontSize: 16,
                  color: Color(0xFF18D191),
                  fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}
