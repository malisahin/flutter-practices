import 'package:combine_mobile/sections/routing/multi-page/multi-page-one.dart';
import 'package:flutter/material.dart';

class MultiPageApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: "First Page", home: getBody(context));
  }

  Scaffold getBody(BuildContext context) {
    return Scaffold(
      body: Center(
        child: FlatButton(
            onPressed: () {
              Navigator.push(context, MultiPageOne());
            },
            child: Text("Go to Page Two")),
      ),
    );
  }
}
