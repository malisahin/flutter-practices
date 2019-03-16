import 'package:flutter/material.dart';

class ValidateFormInputBox extends StatefulWidget {
  @override
  State createState() => ValidateFormInputBoxState();
}

class ValidateFormInputBoxState extends State<ValidateFormInputBox> {
  bool loggedIn = false;
  String _email, _username, _password;

  final formKey = GlobalKey<FormState>();
  final mainKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: mainKey,
      appBar: AppBar(title: Text('Form Example')),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: !loggedIn
            ? Form(
                key: formKey,
                child: Column(
                  children: <Widget>[
                    TextFormField(
                      autocorrect: true,
                      decoration: InputDecoration(labelText: "Email"),
                      validator: (value) =>
                          !value.contains('@') ? "Not a valid email" : null,
                      onSaved: (value) => _email = value,
                      autovalidate: true,
                    ),
                    TextFormField(
                      autovalidate: true,
                      decoration: InputDecoration(labelText: "UserName"),
                      autocorrect: false,
                      validator: (username) =>
                          username.length < 5 ? 'Not a valid name' : null,
                      onSaved: (username) => _username = username,
                    ),
                    TextFormField(
                      autocorrect: false,
                      decoration: InputDecoration(labelText: "Password"),
                      obscureText: true,
                      onSaved: (password) => _password = password,
                      validator: (password) =>
                          password.length < 6 ? 'invalid password' : null,
                    ),
                    RaisedButton(child: Text('Submit'), onPressed: onPress)
                  ],
                ))
            : Center(
                child: Column(
                  children: <Widget>[
                    Text("Welcome $_username"),
                    RaisedButton(
                      child: Text("Log out"),
                      onPressed: () {
                        setState(() {
                          print("Logout");
                          loggedIn = false;
                        });
                      },
                    )
                  ],
                ),
              ),
      ),
    );
  }

  onPress() {
    var form = formKey.currentState;
    if (form.validate()) {
      form.save();
      setState(() {
        loggedIn = true;
      });
    }

    SnackBar snackbar = SnackBar(
      content: Text('usename: $_username, email: $_email, pasword: $_password'),
      duration: Duration(milliseconds: 5000),
    );
    mainKey.currentState.showSnackBar(snackbar);
  }
}
