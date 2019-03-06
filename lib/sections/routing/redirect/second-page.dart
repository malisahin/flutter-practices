import 'package:combine_mobile/models/constants.dart';
import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(title: Text('Second-Page')),
      body: Container(
        padding: new EdgeInsets.all(12),
        child: Center(
          child: Column(
            children: <Widget>[
              Text('This is First Page'),
              RaisedButton(
                  child: Text('Go Third Page'),
                  onPressed: () {
                    Navigator.of(context).pushNamed(Constants.THIRD_PAGE_URL);
                  })
            ],
          ),
        ),
      ),
    );
  }
}
