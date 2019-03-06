import 'package:combine_mobile/models/constants.dart';
import 'package:flutter/material.dart';

class ThirdPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(title: Text('First-Page')),
      body: Container(
        padding: new EdgeInsets.all(12),
        child: Center(
          child: Column(
            children: <Widget>[
              Text('This is First Page'),
              RaisedButton(
                  child: Text('Go  Back'),
                  onPressed: () {
                    Navigator.of(context).pop();
                  }),
              RaisedButton(
                  child: Text('Go Home Page'),
                  onPressed: () {
                    Navigator.of(context).pushNamedAndRemoveUntil(
                        Constants.FIRST_PAGE_URL,
                        (Route<dynamic> route) => false);
                  })
            ],
          ),
        ),
      ),
    );
  }
}
