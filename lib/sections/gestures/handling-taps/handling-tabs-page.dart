import 'package:flutter/material.dart';

class HandlingTabsPage extends StatelessWidget {
  String title = 'Test';

  HandlingTabsPage({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(child: HandlingTabsButton()),
    );
  }
}

class HandlingTabsButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        final snackBar = SnackBar(content: Text('tap'));
        Scaffold.of(context).showSnackBar(snackBar);
      },
      child: Container(
        padding: EdgeInsets.all(12),
        decoration: BoxDecoration(
            color: Theme.of(context).buttonColor,
            borderRadius: BorderRadius.circular(8)),
        child: Text("Tap Button"),
      ),
    );
  }
}
