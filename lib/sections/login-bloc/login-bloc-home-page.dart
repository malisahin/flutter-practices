import 'package:combine_mobile/sections/login-bloc/login-bloc.dart';
import 'package:combine_mobile/sections/login-bloc/second-page.dart';
import 'package:flutter/material.dart';

class LoginBlocHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginBlocHomePage(),
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}

class LoginBlocHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final bloc = LoginBloc();

    return Scaffold(
      appBar: AppBar(
        title: Text('Bloc Pattern'),
      ),
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          padding: EdgeInsets.all(16),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              StreamBuilder<String>(
                  stream: bloc.email,
                  builder: (context, snapshot) => TextField(
                        onChanged: (value) => bloc.emailChanged.add(value),
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: 'Enter Email',
                            labelText: 'Email',
                            errorText: snapshot.error),
                      )),
              SizedBox(height: 20),
              StreamBuilder<String>(
                stream: bloc.password,
                builder: (context, snapshot) => TextField(
                      onChanged: (value) => bloc.paswordChanged.add(value),
                      keyboardType: TextInputType.text,
                      obscureText: true,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: 'Enter Password',
                          labelText: 'Password',
                          errorText: snapshot.error),
                    ),
              ),
              SizedBox(height: 20),
              StreamBuilder<bool>(
                  stream: bloc.submitCheck,
                  builder: (context, snapshot) => RaisedButton(
                      onPressed: snapshot.hasData
                          ? () => changeThePage(context)
                          : null,
                      child: Text('Submit'),
                      color: Colors.tealAccent))
            ],
          ),
        ),
      ),
    );
  }

  changeThePage(BuildContext context) {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => PageTwo()));
  }
}
