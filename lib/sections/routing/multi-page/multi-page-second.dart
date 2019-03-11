import 'package:flutter/material.dart';

class MultiPageSecond extends MaterialPageRoute<Null> {
  MultiPageSecond()
      : super(builder: (BuildContext context) {
          return Scaffold(
            appBar: AppBar(
              title: Text("Last Page!!!"),
              backgroundColor: Theme.of(context).accentColor,
              elevation: 2,
              actions: <Widget>[
                IconButton(
                    icon: Icon(Icons.close),
                    onPressed: () {
                      Navigator.pop(context);
                    })
              ],
            ),
          );
        });
}
