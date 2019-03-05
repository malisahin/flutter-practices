import 'package:flutter/material.dart';

class RippleButtonPage extends StatelessWidget {
  String title = 'Test';

  RippleButtonPage({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: RippleButton(),
      ),
    );
  }
}

class RippleButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Scaffold.of(context).showSnackBar(SnackBar(content: Text('tap')));
      },
      child: Container(
        padding: EdgeInsets.all(12),
        child: Text('Flat Button'),
      ),
    );
  }
}
