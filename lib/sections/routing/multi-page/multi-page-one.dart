import 'package:combine_mobile/sections/routing/multi-page/multi-page-second.dart';
import 'package:flutter/material.dart';

class MultiPageOne extends MaterialPageRoute {
  MultiPageOne()
      : super(builder: (BuildContext context) {
          return Scaffold(
            appBar: AppBar(
              backgroundColor: Theme.of(context).canvasColor,
              elevation: 1.0,
            ),
            body: Center(
              child: RaisedButton(
                onPressed: () {
                  Navigator.push(context, MultiPageSecond());
                },
                child: Text("Go to Page Second"),
              ),
            ),
          );
        });
}
